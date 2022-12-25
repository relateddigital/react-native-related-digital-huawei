//import { NativeModule } from 'react-native';

import invariant from 'invariant';

export function isValidCallback(handler: Function) {
  invariant(typeof handler === 'function', 'Must provide a valid callback');
}

/*
export function isNativeModuleLoaded(module: NativeModule): boolean {
  if (module == null) {
    console.error(
      'Could not load RNRD native module. Make sure native dependencies are properly linked.',
    );
    return false;
  }
  return true;
}
*/
