# Koji for Visual Studio Code

The extension of [Koji](https://github.com/koji-language/koji) for Visual Studio Code:

-   Syntax highlighting for Koji (`.kj` files): keywords, declarations, strings and templates with
    their interpolations, numbers (decimal, hexadecimal and hexadecimal floats), comments, built-in
    functions and types, and `test` blocks. Also comments with `Ctrl+/`, matching brackets and
    quotes, and indentation after `{`, `(` and `[`.
-   The language server of Koji (`kojic lsp`): every error of a file as it is edited, the type of
    what is under the mouse, and where a name is declared (`F12`, or `Ctrl+click`), in the file or
    in the module it comes from.

The language server needs `kojic` (see [Getting Started](https://github.com/koji-language/koji/blob/dev/doc/getting-started.md)):
on the `PATH`, or named by the setting `koji.kojicPath`.

## Installing

Install its dependency (the client of the protocol), then link this directory into the
extensions of VS Code, and restart it:

```sh
npm install
ln -s "$PWD" ~/.vscode/extensions/koji
```

Or package it as a `.vsix` file and install that:

```sh
npm install
npx @vscode/vsce package
code --install-extension koji-0.1.0.vsix
```

## The grammar

`syntaxes/koji.tmLanguage.json` is a copy of the TextMate grammar of Koji, which is kept in the
repository of the language (`editors/textmate/`), where other editors that read TextMate grammars
(Sublime Text, Zed, the highlighters of GitHub and many sites) take it too. Change it there, then
copy it here with `npm run update-grammar`.
