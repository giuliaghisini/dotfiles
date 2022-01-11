#!/bin/bash

echo -n "Enter design-volto-theme version: "
read -r dvtVersion

npx purge-lockfile@latest volto && yarn add "redturtle/design-volto-theme#v$dvtVersion" -W && yarn i18n && git add . &&  git commit -am "chore(upd8): update dvt v$dvtVersion"
