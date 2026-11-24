#!/bin/sh
# Copies the grammar of Koji from its repository (editors/textmate/koji.tmLanguage.json of
# koji-language/koji, its branch main or the one given): the grammar is kept there, where other
# editors take it too, and copied here when it changes.
#
#     npm run update-grammar          (or sh scripts/update-grammar.sh [branch])
set -eu

cd "$(dirname "$0")/.."
branch=${1:-main}
url="https://raw.githubusercontent.com/koji-language/koji/$branch/editors/textmate/koji.tmLanguage.json"
curl -fsSL "$url" -o syntaxes/koji.tmLanguage.json.new
mv syntaxes/koji.tmLanguage.json.new syntaxes/koji.tmLanguage.json
echo "syntaxes/koji.tmLanguage.json: from $url"
