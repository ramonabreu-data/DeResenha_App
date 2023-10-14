import React from 'react';
import { View, Text, StyleSheet } from 'react-native';

const Nome = () => {
  return (
    <View style={styles.nomeContainer}>
      <Text style={styles.nomeText}>De Resenha Sports Club</Text>
    </View>
  );
};

const styles = StyleSheet.create({
  nomeContainer: {
    flex: 3,
    justifyContent: 'flex-start', // Alinhar o título para a parte superior
    alignItems: 'center',
    marginTop: 1, // Adicione um marginTop para mover o título mais para cima
  },
  nomeText: {
    color: 'white',
    fontSize: 25,
  },
});

export default Nome;
