import React from 'react';
import { View, Image, StyleSheet, TouchableOpacity, Linking } from 'react-native';

const Banner = () => {
  const openUrl = () => {
    Linking.openURL('https://m.esportesdasorte.com/ptb'); // Substitua a URL pelo link desejado
  };

  return (
    <View style={styles.container}>
      <TouchableOpacity onPress={openUrl}>
        <Image
          source={{ uri: 'https://scontent.fthe21-1.fna.fbcdn.net/v/t39.30808-6/337902710_787909189570523_985862980879770418_n.png?_nc_cat=110&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeGei0bc_xf2UJiCnPbSIObYAuyUjSB87fsC7JSNIHzt-68XECyWbdEnCpINy0azDE9QIC6xnkU-zHX8kiAzrVDI&_nc_ohc=sSGD-sQYCzwAX-zbQ_e&_nc_ht=scontent.fthe21-1.fna&oh=00_AfCs4gebrWxm0cgLlGgJdYewtFdmqd68NbNKpsmjqYZpYQ&oe=65304820' }}
          style={styles.logo}
          resizeMode="contain" // Ajuste o estilo para exibir a imagem completa
        />
      </TouchableOpacity>
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'flex-end', // Alinhe o conteúdo na parte inferior
    marginBottom: 40, // Adicione uma margem inferior de 30
  },
  logo: {
    width: 320,
    height: 220,
  },
});

export default Banner;
