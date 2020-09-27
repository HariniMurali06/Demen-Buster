import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: LoginPage(),
      theme: ThemeData(
        primarySwatch: Colors.blueAccent[300],
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  State createState() => new LoginPageState();
}

class LoginPageState extends State<LoginPage>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("LogIn")),
        backgroundColor: Colors.lightBlue[200],
        body: Stack(
          fit: StackFit.expand,
          children: [
            Icon(
              Icons.account_box,
              color: Colors.blue[50],
              size: 80.0,
              
            ),
            Form(
                child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter e-mail",
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter Password",
                  ),
                  keyboardType: TextInputType.text,
                  obscureText: true,
                )
              ],
            ))
          ],
        )

        /*body: Center(
        child: Icon(
          Icons.account_box,
          color: Colors.blue[50],
          size: _iconAnimation.value * 100,
        ),
          )
        */
        );
  }
}
