import React from 'react';
import { View, Text } from 'react-native';
import BottomBar from './components/BottomBar'; // Importe o componente

const MainScreen = () => {
  return (
    <View style={{ flex: 1 }}>
      <Text>Conteúdo da tela principal</Text>
      {/* Adicione o componente BottomBar no final da tela */}
      <BottomBar />
    </View>
  );
};

export default MainScreen;
