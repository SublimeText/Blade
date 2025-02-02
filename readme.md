## Blade

[Laravel Blade Template](http://www.laravel.com) syntax definitions for [Sublime Text](https://www.sublimetext.com) based on its HTML/CSS/JS syntaxes.

_It is a fork of great [Medialink/Laravel Blade Highlighter](https://github.com/Medalink/laravel-blade) which is no longer maintained._

## Installation

### Package Control

The easiest way to install is using [Package Control](https://packagecontrol.io). It's listed as `Laravel Blade`.

1. Open `Command Palette` using <kbd>ctrl+shift+P</kbd> or menu item `Tools → Command Palette...`
2. Choose `Package Control: Install Package`
3. Find `Laravel Blade` and hit <kbd>Enter</kbd>
4. Restart Sublime Text _(e.g.: if A File Icons is installed)_
5. Reopen any ```.blade``` files.

### Manual Install

1. Download or clone this repository into ```[install-dir]/Packages/Laravel Blade```
2. Restart Sublime Text _(e.g.: if A File Icons is installed)_
3. Reopen any ```.blade``` files.

> [!NOTE]
>
> Syntax from `main` branch require Sublime Text 4.
>
> For Sublime Text 3 compatible version refer to `st3` branch.

## Supported Extensions

* [Blade Extensions Laravel Package](https://github.com/RobinRadic/blade-extensions)

## Troubleshooting

### §1 Syntax Definition Parse Errors

Blade extends Sublime Text's HTML syntax definition.

If Blade syntax highlighting doesn't work 
and console displays syntax errors in _HTML (Blade).sublime-syntax_,
please make sure to remove any out-dated syntax override.

Steps:

1. call _Menu > Preferences > Browse Packages.._
2. Look for _HTML_ folder
3. Remove it or at least delete any syntax definition in it.

### §2 Scripts are not correctly highlighted

Blade relies on JavaScript (`source.js`), JSX (`source.jsx`), 
TypeScript (`source.ts`) and TSX (`source.tsx`)
to scope script blocks and inline scripts.

Make sure to remove related out-dated syntax packages,
which don't meet least compatibility requirements.

They can be identified by calling 
e.g. `sublime.find_syntax_by_scope("source.ts")` in ST's console.

Known candidates are:

- [JavaScriptNext - ES6 Syntax](https://packagecontrol.io/packages/JavaScriptNext%20-%20ES6%20Syntax)
- [Naomi](https://github.com/borela/naomi)
- [TypeScript](https://packagecontrol.io/packages/TypeScript)
- [TypeScript Syntax](https://packagecontrol.io/packages/TypeScript%20Syntax)

## How to Contribute

* To test a local version of the highlighter first uninstall the highlighter from package control.
* Follow the manual installation process by cloning the repo into your packages directory.
* Restart Sublime Text.
* Open up the '[install-dir]/Packages/laravel-blade' folder into a new Sublime Text project.
* Open up the blade.tmLanguage file and make changes.
* I have provided a test.blade file that holds most of the common uses for testing the regex, use this to verify your changes before and after you make them to ensure the changes you make do not break anything.
* Send a pull request with a single change per request.
