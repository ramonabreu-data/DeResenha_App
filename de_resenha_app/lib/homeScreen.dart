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
      margin: EdgeInsets.symmetric(vertical: 12, horizontal: 8),
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
          padding: EdgeInsets.all(16),
          minimumSize: Size(100, 100),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.white,
              size: 30,
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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 5),
              Image.network(
                'https://ramondata.online/img/logoblue.png',
                width: 130,
                height: 130,
                alignment: Alignment.center,
              ),
              SizedBox(height: 2),
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
              GridView.count(
                crossAxisCount: 3,
                childAspectRatio: 1,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                children: [
                  _buildButton(
                    text: 'O Complexo',
                    icon: Icons.stadium,
                    url: 'https://www.nossoclube.com.br',
                  ),
                  _buildButton(
                    text: 'Reservas',
                    icon: Icons.pending_actions,
                    url:
                        'https://wa.me/5586981568628?text=Ol%C3%A1%2C+gostaria+de+saber+mais+sobre+o+programa+de+s%C3%B3cios+do+EC+Flamengo.+',
                  ),
                  _buildButton(
                    text: 'Empresas Parceiras',
                    icon: Icons.add_business,
                    url:
                        'https://instagram.com/ec.flamengopi?igshid=MzRlODBiNWFlZA==',
                  ),
                  _buildButton(
                    text: 'Soccer School',
                    icon: Icons.sports_soccer,
                    url:
                        'https://leao37.lojavirtualnuvem.com.br/?exit_preview_theme_installation=true',
                  ),
                  _buildButton(
                    text: 'Localização',
                    icon: Icons.location_pin,
                    url:
                        'https://www.google.com/maps/place/De+Resenha+Sports+Club/@-5.1216508,-42.8030985,15z/data=!4m6!3m5!1s0x78e37c98488649b:0xceb70ef0a0996c72!8m2!3d-5.1216508!4d-42.8030985!16s%2Fg%2F11h84rbtc4?entry=ttu',
                  ),
                  _buildButton(
                    text: 'Redes Sociais',
                    icon: Icons.share,
                    url: 'https://www.instagram.com/deresenha/',
                  ),
                ],
              ),
              SizedBox(height: 0.5),
              InkWell(
                onTap: () {
                  launch('https://m.esportesdasorte.com/ptb');
                },
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 35, horizontal: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                  ),
                  child: Image.network(
                    'https://scontent-for1-1.xx.fbcdn.net/v/t39.30808-6/337902710_787909189570523_985862980879770418_n.png?_nc_cat=110&ccb=1-7&_nc_sid=52f669&_nc_eui2=AeGei0bc_xf2UJiCnPbSIObYAuyUjSB87fsC7JSNIHzt-68XECyWbdEnCpINy0azDE9QIC6xnkU-zHX8kiAzrVDI&_nc_ohc=AlGzLuIvrdMAX_pGcoY&_nc_ht=scontent-for1-1.xx&oh=00_AfDcAtP7zl1Ehim0Da5m9rfXnq8w1RW8GM57M8L9mVELOw&oe=652A5960',
                    width: 200,
                    height: 200,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: Color.fromARGB(255, 0, 0, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          
          children: [
         
            Container(
              width: 70,
              child: IconButton(
                iconSize: 36,
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
                tooltip: 'Home',
                alignment: Alignment.center,
                padding: EdgeInsets.all(0),
                splashRadius: 1,
              ),
            ),
            Container(
              width: 70,
              child: IconButton(
                iconSize: 30,
                icon: Column(
                  children: [
                    Icon(Icons.how_to_reg),
                    Text(
                      'Check-in',
                      style: TextStyle(fontSize: 12, color: Colors.white),
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
                  // Navegar para a página de Jogos (JogosScreen)
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TvScreen()),
                  );
                },
                tooltip: 'Check-in',
                alignment: Alignment.center,
                padding: EdgeInsets.all(0),
                splashRadius: 1,
              ),
            ),
            Container(
              width: 70,
              child: IconButton(
                iconSize: 30,
                icon: Column(
                  children: [
                    Icon(Icons.tv),
                    Text(
                      'TV ES',
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                  ],
                ),
                color: _selectedIndex == 3
                    ? Colors.white
                    : Color.fromARGB(255, 248, 246, 246),
                onPressed: () {
                  setState(() {
                    _selectedIndex = 3;
                  });
                  // Navegar para a página de TV (TvScreen)
                  // Abra o site https://www.youtube.com/@esportesdasorteoficial
                  launch('https://www.youtube.com/@esportesdasorteoficial');
                },
                tooltip: 'TV ES',
                alignment: Alignment.center,
                padding: EdgeInsets.all(0),
                splashRadius: 1,
              ),
            ),
            Container(
              width: 70,
              child: IconButton(
                iconSize: 30,
                icon: Column(
                  children: [
                    Icon(Icons.perm_contact_calendar),
                    Text(
                      'Carteira ',
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                  ],
                ),
                color: _selectedIndex == 4
                    ? Colors.white
                    : Color.fromARGB(255, 248, 246, 246),
                onPressed: () {
                  setState(() {
                    _selectedIndex = 4;
                  });
                  // Navegar para a página de Sócio (SocioScreen)
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SocioScreen()),
                  );
                },
                tooltip: 'Carteira ',
                alignment: Alignment.center,
                padding: EdgeInsets.all(0),
                splashRadius: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
