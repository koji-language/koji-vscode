# Koji for Visual Studio Code

The extension of [Koji](https://koji-language.github.io/koji-website/), a statically typed language
that aims to be simple, readable and fast, for Visual Studio Code:

-   Syntax highlighting for Koji (`.kj` files): keywords, declarations, strings and templates with
    their interpolations, numbers (decimal, hexadecimal and hexadecimal floats), comments, built-in
    functions and types, and `test` blocks. Also comments with `Ctrl+/`, matching brackets and
    quotes, and indentation after `{`, `(` and `[`.
-   The language server of Koji (`kojic lsp`): every error of a file as it is edited, the type of
    what is under the mouse, and where a name is declared (`F12`, or `Ctrl+click`), in the file or
    in the module it comes from.

## Requirements

The language server is `kojic`, the compiler of Koji: install it from the
[download page](https://koji-language.github.io/koji-website/download.html), and put it on the
`PATH`, or name it with the setting `koji.kojicPath`. Without it, the extension still colors the
code.

## Settings

| Setting | Default | What it is |
| --- | --- | --- |
| `koji.kojicPath` | `kojic` | The `kojic` command, or its path when it is not on the `PATH`. |

## Building it

```sh
npm install
npx vsce package                       # koji-<version>.vsix
code --install-extension koji-*.vsix
```

`syntaxes/koji.tmLanguage.json` is a copy of the TextMate grammar of Koji, which is kept in the
repository of the language (`editors/textmate/`), where other editors that read TextMate grammars
take it too. Change it there, then copy it here with `npm run update-grammar`.

## Publishing

`.github/workflows/publish.yml` publishes a version when its tag is pushed (`git tag v0.1.0 && git
push origin v0.1.0`): to the Visual Studio Marketplace with the secret `VSCE_PAT`, to Open VSX
with `OVSX_PAT` (each left out while its secret is not set), and as a `.vsix` on the release of
the tag on GitHub. The version of the tag must be that of `package.json`.

## Issues

Problems of the extension: [koji-vscode](https://github.com/koji-language/koji-vscode/issues).
Problems of the language or of its language server: [koji](https://github.com/koji-language/koji/issues).
