import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:de_resenha_app/pages/tv.dart';
import 'package:de_resenha_app/pages/socio.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _buildButton({
    required String text,
    required IconData icon,
    required String url,
  }) {
    return Container(
      margin: EdgeInsets.all(8),
      child: ElevatedButton(
        onPressed: () {
          launch(url);
        },
        style: ElevatedButton.styleFrom(
          primary: Color.fromARGB(255, 64, 185, 8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: BorderSide(
              color: Color.fromARGB(255, 53, 5, 141),
              width: 2,
            ),
          ),
          padding: EdgeInsets.all(15), // Espaçamento interno aumentado
          minimumSize: Size(150, 150), // Tamanho mínimo dos botões
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.white,
              size: 40, // Tamanho do ícone aumentado
            ),
            SizedBox(height: 12),
            Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 10, 49, 158),
        title: Text('De Resenha'),
      ),
      body: Container(
        color: Color.fromARGB(255, 10, 49, 158),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 14),
            Image.network(
              'https://ramondata.online/img/logoblue.png',
              width: 120,
              height: 120,
            ),
            SizedBox(height: 12),
            Text(
              'De Resenha Sports Club',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 14),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 5),
                    GridView.count(
                      crossAxisCount: 3, // 2 colunas por linha
                      childAspectRatio: 1, // Proporção dos botões
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      children: [
                        _buildButton(
                          text: 'O Complexo',
                          icon: Icons.home,
                          url: 'https://www.nossoclube.com.br',
                        ),
                        _buildButton(
                          text: 'Reservas',
                          icon: Icons.pending_actions,
                          url:
                              'https://wa.me/5586981568628?text=Ol%C3%A1%2C+gostaria+de+saber+mais+sobre+o+programa+de+s%C3%B3cios+do+EC+Flamengo.+',
                        ),
                        _buildButton(
                          text: 'Instagram',
                          icon: Icons.camera_alt,
                          url:
                              'https://instagram.com/ec.flamengopi?igshid=MzRlODBiNWFlZA==',
                        ),
                        _buildButton(
                          text: 'Produtos Oficiais',
                          icon: Icons.card_travel,
                          url:
                              'https://leao37.lojavirtualnuvem.com.br/?exit_preview_theme_installation=true',
                        ),
                        _buildButton(
                          text: 'Fan Token - Leão37',
                          icon: Icons.monetization_on_sharp,
                          url:
                              'https://leao37.lojavirtualnuvem.com.br/produtos/leao-37-fan-token/',
                        ),
                        _buildButton(
                          text: 'Parceiros',
                          icon: Icons.thumb_up,
                          url: '', // Adicione a URL apropriada aqui
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Color.fromARGB(255, 0, 0, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.home),
              color: _selectedIndex == 0 ? Colors.white : Colors.grey,
              onPressed: () {
                setState(() {
                  _selectedIndex = 0;
                });
                // Navegar para a página inicial (HomeScreen)
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
            ),
            IconButton(
              icon: Column(
                children: [
                  Icon(Icons.sports_soccer),
                  Text(
                    'Jogos',
                    style: TextStyle(fontSize: 7, color: Colors.white),
                  ),
                ],
              ),
              color: _selectedIndex == 2
                  ? Colors.white
                  : Color.fromARGB(255, 248, 246, 246),
              onPressed: () {
                setState(() {
                  _selectedIndex = 2;
                });
                // Navegar para a página de TV (TvScreen)
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TvScreen()),
                );
              },
            ),
            IconButton(
              icon: Column(
                children: [
                  Icon(Icons.tv),
                  Text(
                    'TV',
                    style: TextStyle(fontSize: 7, color: Colors.white),
                  ),
                ],
              ),
              color: _selectedIndex == 5
                  ? Colors.white
                  : Color.fromARGB(255, 248, 246, 246),
              onPressed: () {
                setState(() {
                  _selectedIndex = 2;
                });
                // Navegar para a página de TV (TvScreen)
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TvScreen()),
                );
              },
            ),
            IconButton(
              icon: Column(
                children: [
                  Icon(Icons.group),
                  Text(
                    'Sócio',
                    style: TextStyle(fontSize: 7, color: Colors.white),
                  ),
                ],
              ),
              color: _selectedIndex == 2
                  ? Colors.white
                  : Color.fromARGB(255, 248, 246, 246),
              onPressed: () {
                setState(() {
                  _selectedIndex = 2;
                });
                // Navegar para a página de TV (TvScreen)
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SocioScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
