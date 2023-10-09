import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SocioScreen extends StatefulWidget {
  @override
  _SocioScreenState createState() => _SocioScreenState();
}

class _SocioScreenState extends State<SocioScreen> {
  TextEditingController _cpfController = TextEditingController();
  List<Map<String, dynamic>> _userDataList = [];
  bool _cpfNotFound = false;

  Future<void> _getUserData() async {
    final String apiUrl =
        'https://ramondata.online/cadastrofla/api.php?cpf=${_cpfController.text}';

    final response = await http.get(Uri.parse(apiUrl));
    if (response.statusCode == 200) {
      final userData = json.decode(response.body);
      if (userData != null) {
        setState(() {
          _userDataList.add(userData);
          _cpfNotFound = false;
        });
      } else {
        setState(() {
          _cpfNotFound = true;
        });
      }
    } else {
      setState(() {
        _userDataList = [];
        _cpfNotFound = true;
      });
    }
  }

  Widget _buildUserDataCard(Map<String, dynamic> userData) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(color: Colors.white, width: 2.0),
      ),
      child: Card(
        color: Color.fromARGB(255, 10, 49, 158),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 8.0,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 64, 185, 8),
                  borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)),
                ),
              ),
              SizedBox(height: 16.0),
              Center(
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Color.fromARGB(255, 64, 185, 8), width: 2.0),
                      ),
                      child: CircleAvatar(
                        radius: 60.0,
                        backgroundColor: Color.fromARGB(255, 64, 185, 8),
                        child: Image.network(
                          'https://ramondata.online/img/logoblue.png',
                          width: 130,
                          height: 130,
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      'De Resenha Sports Club ',
                      style: TextStyle(color: Colors.white, fontSize: 22.0),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Nome: ${userData['nome']}',
                style: TextStyle(color: Colors.white, fontSize: 18.0),
              ),
              SizedBox(height: 12.0),
              Text(
                'Inscrição: ${userData['id']}',
                style: TextStyle(color: Colors.white, fontSize: 18.0),
              ),
              SizedBox(height: 12.0),
              Text(
                'Sócio Desde: ${_formatDate(userData['data_adesao'])}',
                style: TextStyle(color: Colors.white, fontSize: 18.0),
              ),
              SizedBox(height: 12.0),
              Text(
                ' Sócio ${userData['categoria_socio']}',
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
              SizedBox(height: 16.0),
              Container(
                width: double.infinity,
                height: 10.0,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 64, 185, 8),
                  borderRadius: BorderRadius.vertical(bottom: Radius.circular(10.0)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _formatDate(String dateString) {
    DateTime date = DateTime.parse(dateString);
    return '${date.day}/${date.month}/${date.year}';
  }

  Widget _buildNoDataFoundMessage() {
    if (_cpfNotFound) {
      return Text(
        'CPF não encontrado.',
        style: TextStyle(color: Colors.white, fontSize: 18.0),
      );
    } else {
      return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 10, 49, 158),
      appBar: AppBar(
        title: Text('Carteira'),
        backgroundColor: Color.fromARGB(255, 10, 49, 158),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: _cpfController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Digite o CPF do Sócio',
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _getUserData,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Buscar',
                  style: TextStyle(color: Colors.white, fontSize: 18.0),
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 64, 185, 8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Carteira Digital ',
              style: TextStyle(color: Colors.white, fontSize: 26.0),
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: ListView.builder(
                itemCount: _userDataList.length,
                itemBuilder: (BuildContext context, int index) {
                  final userData = _userDataList[index];
                  return Column(
                    children: [
                      _buildUserDataCard(userData),
                      SizedBox(height: 16.0),
                    ],
                  );
                },
              ),
            ),
            _buildNoDataFoundMessage(),
          ],
        ),
      ),
    );
  }
}
