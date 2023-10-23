import React from 'react';
import { View, TouchableOpacity, Text, StyleSheet } from 'react-native';
import Icon from 'react-native-vector-icons/FontAwesome';
import { useNavigation } from '@react-navigation/native';

const BottomGrid = () => {
  const navigation = useNavigation();

  const openScreen = (screenName) => {
    navigation.navigate(screenName);
  };

  const buttons = [
    { title: 'Complexo', icon: 'university', screen: 'home' },
    { title: 'Soccer School', icon: 'futbol-o', screen: 'SoccerSchool' }, // Use o nome da tela, não o componente
    { title: 'Agendamento', icon: 'calendar-plus-o', screen: 'AgendamentoScreen' },
    { title: 'Resenha FC', icon: 'users', screen: 'EmpresasParceirasScreen' },
    { title: 'Loo', icon: 'map-signs' },
    { title: 'Redes', icon: 'share-alt' },
  ];

  const renderButton = (button, index) => (
    <TouchableOpacity
      key={index}
      style={styles.button}
      onPress={() => {
        if (button.screen) {
          openScreen(button.screen);
        } else if (button.url) {
          // Adicione a lógica para abrir links externos aqui
        }
      }}
    >
      <View style={styles.buttonContent}>
        <Icon
          name={button.icon}
          size={25}
          color="#00309B"
          style={styles.icon}
        />
        <Text style={styles.buttonText}>{button.title}</Text>
      </View>
    </TouchableOpacity>
  );

  return (
    <View style={styles.grid}>
      <View style={styles.row}>
        {buttons.slice(0, 3).map((button, index) => renderButton(button, index))}
      </View>
      <View style={styles.row}>
        {buttons.slice(3).map((button, index) => renderButton(button, index + 3))}
      </View>
    </View>
  );
};

const styles = StyleSheet.create({
  grid: {
    flex: 60,
    justifyContent: 'center',
    alignItems: 'center',
    marginStart: 14,
    marginEnd: 14,
    marginTop: -180,
  },
  row: {
    flexDirection: 'row',
    justifyContent: 'center',
    marginBottom: 8,
    marginVertical: 5,
  },
  button: {
    width: 95,
    height: 95,
    borderRadius: 50,
    backgroundColor: '#00E777',
    margin: 8,
    alignItems: 'center',
    justifyContent: 'center',
  },
  buttonContent: {
    alignItems: 'center',
    justifyContent: 'center',
  },
  icon: {
    width: 30,
    height: 40,
    marginBottom: 0,
    backgroundColor: 'transparent',
  },
  buttonText: {
    fontSize: 12,
    color: '#00309B',
  },
});

export default BottomGrid;
