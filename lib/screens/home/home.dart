import 'package:Demen_Buster/services/auth.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final AuthServices _auth = AuthServices();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("In home"),
        backgroundColor: Colors.green[600],
        actions:[
          FlatButton.icon(
            icon: Icon(Icons.person),
            onPressed:() async{
              await _auth.signOut();
            },
            label: Text("Logout"),
          ),
        ],
      ),
      body: Text("Hi hello"),
    );
  }
}
