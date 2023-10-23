import React from 'react';
import { View, Text, StyleSheet, Image, ScrollView } from 'react-native';

const SoccerSchool = () => {
  return (
    <ScrollView contentContainerStyle={styles.container}>
      
      <Text style={styles.title}>Soccer School De Resenha</Text>
      <Text style={styles.description}>
        Bem-vindo à Soccer School De Resenha, o melhor lugar para aprender e aprimorar suas habilidades de futebol. Nossa escola é dedicada a promover o amor pelo esporte e o espírito de equipe. Temos treinadores experientes que ajudarão você a se tornar um jogador de futebol excepcional.
      </Text>
      <Text style={styles.subtitle}>Nossos Serviços</Text>
      <Text style={styles.description}>
        - Treinamento individualizado com instrutores qualificados.
        {"\n"}
        - Treinos em grupo para todas as idades.
        {"\n"}
        - Instalações de última geração para prática.
        {"\n"}
        - Programas de desenvolvimento de habilidades.
        {"\n"}
        - Eventos e torneios emocionantes.
      </Text>
      <Text style={styles.contact}>Entre em contato para mais informações:</Text>
      <Text style={styles.contactInfo}>Telefone: (123) 456-7890</Text>
      <Text style={styles.contactInfo}>Email: info@soccerschoolderesenha.com</Text>
    </ScrollView>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'center',
    padding: 20,
    backgroundColor: '#fff',
  },
  logo: {
    width: 150,
    height: 150,
    marginBottom: 20,
  },
  title: {
    fontSize: 24,
    fontWeight: 'bold',
    marginBottom: 10,
    color: '#00309B',
  },
  description: {
    fontSize: 16,
    textAlign: 'center',
    marginBottom: 20,
  },
  subtitle: {
    fontSize: 20,
    fontWeight: 'bold',
    marginTop: 10,
    color: '#00309B',
  },
  contact: {
    fontSize: 18,
    fontWeight: 'bold',
    marginTop: 20,
  },
  contactInfo: {
    fontSize: 16,
    marginTop: 10,
    color: '#00309B',
  },
});

export default SoccerSchool;
