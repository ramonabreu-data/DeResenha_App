import React from 'react';
import { View, StyleSheet } from 'react-native';
import { NavigationContainer } from '@react-navigation/native';
import BottomBar from './components/BottomBar'; // Importe o componente
import AppBar from './components/AppBar';
import Logo from './components/Logo';
import Nome from './components/Nome';
import BottomGrid from './components/BottomGrid';
import Banner from './components/Banner';

const MainScreen = () => {
  return (
    <NavigationContainer>
      <View style={styles.container}>
        <AppBar title="De Resenha SC" />
        <Logo />
        <Nome />
        <BottomGrid />
        <Banner></Banner>
        <BottomBar />
      </View>
    </NavigationContainer>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#00309B',
  },
});

export default MainScreen;
