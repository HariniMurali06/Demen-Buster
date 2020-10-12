import 'package:flutter/material.dart';
import 'package:Demen_Buster/services/auth.dart';
import 'package:flutter/cupertino.dart';

class SignIn extends StatefulWidget {
  final Function toggle;
  SignIn({this.toggle});

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  String email = "";
  String passWord = "";
  final AuthServices _auth = AuthServices();
  final _formKey = GlobalKey<FormState>();
  String error = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[200],
      appBar: AppBar(
        backgroundColor: Colors.amber[500],
        elevation: 10,
        title: Text("Sign In in to The Game"),
        actions: [
          FlatButton.icon(
            icon: Icon(Icons.person_add),
            label: Text("Register"),
            onPressed: () {
              widget.toggle();
            },
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              TextFormField(
                validator: (val) => val.isEmpty ? "Enter an Email" : null,
                onChanged: (val) {
                  setState(() => email = val);
                },
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                validator: (val) => val.length < 6
                    ? "Enter a Password with minimum 6 Characters"
                    : null,
                obscureText: true,
                onChanged: (val) {
                  setState(() => passWord = val);
                },
              ),
              SizedBox(height: 20),
              RaisedButton(
                child: Text(
                  "Sign In",
                ),
                onPressed: () async {
                  if (_formKey.currentState.validate()) {
                    dynamic result =
                        await _auth.signinEmailPass(email, passWord);
                    if (result == null) {
                      setState(() => error =
                          "Please Check the login credentials and try again ");
                    }
                  }
                },
              ),
              SizedBox(height: 20),
              Text(
                error,
                style: TextStyle(color: Colors.red, fontSize: 14),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
