import React from 'react';
import { View, TouchableOpacity, Text, StyleSheet } from 'react-native';
import Icon from 'react-native-vector-icons/FontAwesome'; // Importe o ícone apropriado

const BottomBar = () => {
  return (
    <View style={styles.bottomBar}>
      <TouchableOpacity style={styles.button}>
        <Icon name="home" size={25} color="#51d61c" />
        <Text style={styles.buttonText}>Home</Text>
      </TouchableOpacity>
      <TouchableOpacity style={styles.button}>
        <Icon name="youtube-play" size={25} color="#51d61c" />
        <Text style={styles.buttonText}>TV ES</Text>
      </TouchableOpacity>
      <TouchableOpacity style={styles.button}>
        <Icon name="whatsapp" size={25} color="#51d61c" />
        <Text style={styles.buttonText}>whatsapp</Text>
      </TouchableOpacity>
      <TouchableOpacity style={styles.button}>
        <Icon name="address-card" size={25} color="#51d61c" />
        <Text style={styles.buttonText}>Aluno</Text>
      </TouchableOpacity>
    </View>
  );
};

const styles = StyleSheet.create({
  bottomBar: {
    flexDirection: 'row',
    justifyContent: 'space-around',
    alignItems: 'center',
    height: 50, // Altura da barra
    backgroundColor: '#0b0feb', // Cor de fundo da barra
    position: 'absolute', // Define a barra como absoluta na parte inferior
    bottom: 0, // Alinha a barra na parte inferior
    width: '100%', // Faz a barra ocupar toda a largura
  },
  button: {
    flex: 1,
    alignItems: 'center',
  },
  buttonText: {
    color: '#51d61c',
  },
});

export default BottomBar;
