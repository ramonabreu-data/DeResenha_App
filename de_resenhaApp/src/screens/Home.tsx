import React from 'react';
import { View } from 'react-native';

export function Home() {
  return (
    <View  style={{ flex: 1, backgroundColor: '#00309B',alignItems: 'center', justifyContent: 'center' }}>

    </View>
  );
}

{/*
import React from 'react';
import { View, StyleSheet } from 'react-native';
import { NavigationContainer } from '@react-navigation/native';
import BottomBar from './components/BottomBar'; // Importe o componente
import AppBar from './components/AppBar';
import Logo from './components/Logo';
import Nome from './components/Nome';
import Banner from './components/Banner';
import { createStackNavigator } from '@react-navigation/stack';


import BottomGrid from './components/BottomGrid';
import ButtomUse from './components/useNavigation';


const Stack = createStackNavigator();
const MainScreen = () => {
  return (
    <NavigationContainer>
      <View style={styles.container}>
        <AppBar title="De Resenha SC" />
        <Logo />
        <Nome />
        
        <ButtomUse />
        <Banner />
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


*/}