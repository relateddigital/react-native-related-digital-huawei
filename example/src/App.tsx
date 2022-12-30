import * as React from 'react';

import { Button, Dimensions, ScrollView, StyleSheet, Text, View } from 'react-native';
import RelatedDigital from 'react-native-related-digital-huawei';
import { useFocusEffect, useNavigation } from '@react-navigation/native';

export default function App() {

  const navigation = useNavigation()
  useFocusEffect(
    React.useCallback(() => {
    }, [])
  );


  return (
    <ScrollView
      contentContainerStyle={styles.contentContainerStyles}
      style={styles.container}>

      <View style={styles.btnContainer}>
        <Button
          onPress={async () => {
            await RelatedDigital.setEmail('ege@visi.com', true)
          }}
          title={'setEmail'}
        />
      </View>

      <View style={styles.btnContainer}>
        <Button
          onPress={async () => {
            await RelatedDigital.customEvent('PageView', {
              'OM.pv': 'psd',
              'OM.pp': '10.23'
            })
          }}
          title={'customEvent'}
        />
      </View>


      <View style={styles.btnContainer}>
        <Button
          onPress={() => navigation.navigate('Push Screen')}
          title={"Push Screen"}
        />
      </View>
      <Text>Push Screen</Text>
    </ScrollView>
  );
}

const styles = StyleSheet.create({
  container: {},
  contentContainerStyles: {
    width: Dimensions.get('window').width,
    justifyContent: 'center',
    alignItems: 'stretch',
    padding: 20,
  },
  box: {
    width: 60,
    height: 60,
    marginVertical: 20,
  },
  heading: {
    fontWeight: 'bold',
    marginTop: 20
  },
  input: {
    borderWidth: 1,
    width: 250,
    borderColor: 'black'
  },
  btnContainer: {
    margin: 10
  }
});
