import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Details extends StatelessWidget {
  Map data;

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context).settings.arguments;
    print(data.toString());
    return Scaffold(
      appBar: AppBar(
        title: Text(data['name']),
      ),
      body: Container(
        child: Card(
          child: Column(
            children: [
              Text(
                data['name'],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Text(
                data['address'],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              FlatButton.icon(
                icon: Icon(Icons.phone),
                label: Text("Call"),
                onPressed: _launchURL,
              ),
            ],
          ),
        ),
      ),
    );
  }

  _launchURL() async {
    if (await canLaunch("tel:${data['number']}")) {
      await launch("tel:${data['number']}");
    } else {
      throw 'Could not launch tel:${data['number']}';
    }
  }
}
