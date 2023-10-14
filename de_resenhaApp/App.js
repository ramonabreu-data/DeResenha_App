import React from 'react';
import { View, title,Text} from 'react-native';
import BottomBar from './components/BottomBar'; // Importe o componente
import AppBar from './components/AppBar';


const MainScreen = () => {
  return (
    <View style={{ flex: 1,backgroundColor: '#2123c4' }}>
      
      <AppBar title="De Resenha SC"/>

      
      {/* Adicione o componente BottomBar no final da tela */}
      <BottomBar />
    </View>
  );
};

export default MainScreen;
