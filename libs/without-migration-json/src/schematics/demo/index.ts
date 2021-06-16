import { Rule } from '@angular-devkit/schematics';

export default function(): Rule {
  return () => {
    console.log('demo schematic executed');
  };
}
