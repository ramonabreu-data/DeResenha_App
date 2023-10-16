import React from 'react';
import { View, StyleSheet } from 'react-native';
import { NavigationContainer } from '@react-navigation/native';
import BottomBar from '../components/BottomBar'
import AppBar from '../components/AppBar';
import Logo from '../components/Logo';
import Nome from '../components/Nome';
import BottomGrid from '../components/BottomGrid';
import Banner from '../components/Banner';

const SoccerSchool = () => {
  return (
    <NavigationContainer>
      <View style={styles.container}>
        <AppBar title="Soccer School" />
        
        
        
        <Banner />
        <BottomBar />
      </View>
    </NavigationContainer>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#2123c4',
  },
});

export default SoccerSchool;
