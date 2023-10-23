import React from 'react';
import { View, Text, StyleSheet } from 'react-native';

const AppBar = ({ title }) => {
  return (
    <View style={styles.appBar}>
      <Text style={styles.title}>{title}</Text>
    </View>
  );
};

const styles = StyleSheet.create({
  appBar: {
    backgroundColor: '#0F1768',
    padding: 20,
    paddingTop: 45
    ,
    justifyContent: 'center',
    alignItems: 'flex-start',
    
  },
  title: {
    color: 'white',
    fontSize: 20,
  },
});

export default AppBar;
