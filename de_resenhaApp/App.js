import React from 'react';
import { View,title} from 'react-native';
import BottomBar from './components/BottomBar'; // Importe o componente
import AppBar from './components/AppBar';
import Logo from './components/Logo';
import Nome from './components/Nome';


const MainScreen = () => {
  return (
    <View style={{ flex: 1,backgroundColor: '#2123c4' }}>
      
      <AppBar title="De Resenha SC"/>
      <Logo /> 
      {/* Adicione o componente BottomBar no final da tela */}
      <BottomBar />
      <Nome />
    </View>
  );
};

export default MainScreen;
