@echo off
setlocal
chcp 65001 >nul
pushd %~dp0

if /i "%1" == "release" goto RELEASE
goto :usage

:RELEASE
    if "%2"== "" goto :usage
    set version=%2

    for %%d in ("%~dp0.") do set package=%%~nxd

    echo Creating assets for "%package%"...

    :: create tag and download asset for ST4107+
    set branch=main
    set tag=%version%
    set archive=%package%-%version%.sublime-package
    set assets="%archive%#%archive%"
    call git push origin %branch%
    call git archive --format zip -o "%archive%" %branch%

    :: create github release (on main branch using latest tag)
    gh release create --target %branch% -t "v%version%" "%tag%" %assets%
    del /f /q *.sublime-package
    git fetch
    goto :eof

:USAGE
    echo USAGE:
    echo.
    echo   make ^[release^]
    echo.
    echo   release ^<semver^> -- create and publish a release (e.g. 1.2.3)
    goto :eof
