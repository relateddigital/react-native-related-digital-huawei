import * as React from 'react';

import { StyleSheet, View, Text } from 'react-native';
import { multiply } from 'react-native-related-digital-huawei';
import RelatedDigital from 'react-native-related-digital-huawei';

export default function App() {
  const [result, setResult] = React.useState<number | undefined>();

  React.useEffect(() => {
    multiply(3, 17).then(setResult);
    RelatedDigital.init(
      '676D325830564761676D453D',
      '356467332F6533766975593D',
      'visistore',
      true
    );
    console.log('AFERİM');
  }, []);

  return (
    <View style={styles.container}>
      <Text>Result: {result}</Text>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
  },
  box: {
    width: 60,
    height: 60,
    marginVertical: 20,
  },
});
