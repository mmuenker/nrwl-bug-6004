#!/bin/bash

BASE_DIR=$(git rev-parse --show-toplevel)

cd "$BASE_DIR" || exit 1

yarn

echo "build packages"

yarn nx run with-migration-schematic:build
yarn nx run without-migration-json:build

echo "link packages"

yarn --cwd ./dist/libs/with-migration-schematic link
yarn --cwd ./dist/libs/without-migration-json link

yarn link @nrwl-bug-6004/with-migration-schematic
yarn link @nrwl-bug-6004/without-migration-json
