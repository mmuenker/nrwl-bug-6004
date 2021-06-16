# Demo Repo for [issue #6004](https://github.com/nrwl/nx/issues/6004)

> IMPORTANT: it is required to use yarn to reproduce this issue. With npm the linked packages will be removed on `nx migrate --run-migrations`

1. Run the setup script: `yarn setup`
2. Check if the schematic `@nrwl-bug-6004/without-migration-json:demo` is working: `yarn test:demo-schematic`
3. Run nx migrations with `nx migrate --run-migrations`

## Current Behavior

The migration schematic for `@nrwl-bug-6004/with-migration-schematic` does **not** complete successfully.

The error `Could not find migrations in package: "@nrwl-bug-6004/without-migration-json"` is thrown.

The adapted method `_resolveCollectionPath` for the class `NodeModulesEngineHost` does not check if the package have a
collection.json.

## Expected Behavior

The migration schematic for `@nrwl-bug-6004/with-migration-schematic` does complete successfully.

The schematic `@nrwl-bug-6004/without-migration-json:demo` is executed.
