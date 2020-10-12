import 'package:flutter/material.dart';
import 'package:Demen_Buster/services/auth.dart';

class Register extends StatefulWidget {
  final Function toggle;
  Register({this.toggle});

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  String email = "";
  String passWord = "";
  String error = "";

  final AuthServices _auth = AuthServices();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[200],
      appBar: AppBar(
        backgroundColor: Colors.amber[500],
        elevation: 10,
        title: Text("Register in to The Game"),
        actions: [
          FlatButton.icon(
            icon: Icon(Icons.input),
            label: Text("Sign in"),
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
                  "Sign Up",
                ),
                onPressed: () async {
                  if (_formKey.currentState.validate()) {
                    dynamic result =
                        await _auth.regiterEmailPass(email, passWord);
                    if (result == null) {
                      setState(() => error = "Please enter a valid Email");
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
