import { externalSchematic, Rule } from '@angular-devkit/schematics';

export default function(): Rule {
  return externalSchematic('@nrwl-bug-6004/without-migration-json', 'demo', {});
}
