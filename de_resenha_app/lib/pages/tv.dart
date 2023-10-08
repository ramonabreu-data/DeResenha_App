import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TvScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('TV'),
      ),
      body: Container(
        color: Colors.red,
        child: Center(
          child: IconButton(
            icon: Column(
              children: [
                Icon(Icons.tv),
                Text(
                  'TV',
                  style: TextStyle(fontSize: 7, color: Colors.white),
                ),
              ],
            ),
            color: Colors.white,
            onPressed: () {
              _launchURL();
            },
          ),
        ),
      ),
    );
  }

  Future<void> _launchURL() async {
    const url = 'https://www.youtube.com/@ecflamengopi/featured';

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
