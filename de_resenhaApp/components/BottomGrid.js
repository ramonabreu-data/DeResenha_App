import React from 'react';
import { View, TouchableOpacity, Text, StyleSheet } from 'react-native';
import Icon from 'react-native-vector-icons/FontAwesome'; // Importe os ícones do FontAwesome
import { useNavigation } from '@react-navigation/native';

const BottomGrid = () => {
  const navigation = useNavigation();

  const openLink = (url) => {
    navigation.navigate('WebView', { uri: url });
  };

  const buttons = [
    { title: 'Complexo', icon: 'university', url: 'https://www.google.com' },
    { title: 'Soccer School', icon: 'futbol-o', url: 'https://www.google.com' },
    { title: 'Agendamento', icon: 'calendar-plus-o', url: 'https://www.google.com' },
    { title: 'Empresas Parceiras', icon: 'thumbs-up', url: 'https://www.google.com' },
    { title: 'Localização', icon: 'map-signs', url: 'https://www.google.com' },
    { title: 'Redes', icon: 'share-alt', url: 'https://www.google.com' },
  ];

  return (
    <View style={styles.grid}>
      <View style={styles.row}>
        {buttons.slice(0, 3).map((button, index) => (
          <TouchableOpacity
            key={index}
            style={styles.button}
            onPress={() => openLink(button.url)}
          >
            <View style={styles.buttonContent}>
              <Icon
                name={button.icon}
                size={35}
                color="#00309B"
                style={styles.icon } // Usando style em vez de containerStyle
              />
              <Text style={styles.buttonText}>{button.title}</Text>
            </View>
          </TouchableOpacity>
        ))}
      </View>
      <View style={styles.row}>
        {buttons.slice(3).map((button, index) => (
          <TouchableOpacity
            key={index + 3}
            style={styles.button}
            onPress={() => openLink(button.url)}
          >
            <View style={styles.buttonContent}>
              <Icon
                name={button.icon}
                size={35}
                color="#00309B"
                style={styles.icon} // Usando style em vez de containerStyle
              />
              <Text style={styles.buttonText}>{button.title}</Text>
            </View>
          </TouchableOpacity>
        ))}
      </View>
    </View>
  );
};

const styles = StyleSheet.create({
  grid: {
    flex: 70,
    justifyContent: 'center',
    alignItems: 'center',
    marginStart: 10,
    marginEnd: 10,
    marginTop: -200,
  },
  row: {
    flexDirection: 'row',
    justifyContent: 'center',
    marginBottom: 10,
    marginVertical: 5,
  },
  button: {
    width: 110,
    height: 110,
    borderRadius: 80,
    backgroundColor: '#00E777',
    margin: 8,
    alignItems: 'center',
    justifyContent: 'center',
  },
  buttonContent: {
    alignItems: 'center',
  },
  icon: {
    width: 40,
    height: 40,
    marginBottom: 2, // Metade do tamanho do ícone
    backgroundColor: 'transparent',
    alignItems: 'center',
  },
  buttonText: {
    fontSize: 14,
   
    color: '#00309B',
    
  },
});

export default BottomGrid;
