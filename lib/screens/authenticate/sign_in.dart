import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:Demen_Buster/services/auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  
  final AuthServices _auth = AuthServices();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[200],
      appBar: AppBar(
        backgroundColor: Colors.amber[500],
        elevation: 0,
        title: Text("sign in to The Game"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        child: RaisedButton(
          child: Text("sign in anonomously"),
          onPressed: () async {
            dynamic result = await _auth.signInAnon();
            if (result == null) {
              print("Cannot signIN");
            } else {
              print("signed in");
              print(result);
            }
          },
        ),
      ),
    );
  }
}
