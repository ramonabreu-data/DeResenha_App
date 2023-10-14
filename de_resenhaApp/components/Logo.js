import React from 'react';
import { View, Image, StyleSheet } from 'react-native';

const Logo = () => {
  return (
    <View style={styles.container}>
      <Image
        source={{ uri: 'https://ramondata.online/img/logoblue.png' }}
        style={styles.logo}
      />
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    
    alignItems: 'center',
    paddingTop: 20,
  },
  logo: {
    width: 150, // Largura desejada para o logotipo
    height: 150, // Altura desejada para o logotipo
  },
});

export default Logo;
