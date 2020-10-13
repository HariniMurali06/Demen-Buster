import 'package:Demen_Buster/common/constants.dart';
import 'package:flutter/material.dart';
import 'package:Demen_Buster/services/auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:Demen_Buster/common/loading.dart';

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
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return loading
        ? Loading()
        : Scaffold(
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
                      decoration:
                          textInputDecoration.copyWith(hintText: "Email"),
                      validator: (val) => val.isEmpty ? "Enter an Email" : null,
                      onChanged: (val) {
                        setState(() => email = val);
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration:
                          textInputDecoration.copyWith(hintText: "Password"),
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
                          setState(() => loading = true);
                          dynamic result =
                              await _auth.signinEmailPass(email, passWord);
                          if (result == null) {
                            setState(
                              () {
                                error =
                                    "Please Check the login credentials and try again ";
                                loading = false;
                              },
                            );
                          }
                        }
                      },
                    ),
                    SizedBox(height: 30),
                    Text(
                      error,
                      style: TextStyle(color: Colors.red, fontSize: 14),
                    ),
                    SizedBox(height: 20),
                    FlatButton.icon(
                      label: Text("Sign In anonomously"),
                      onPressed: () async {
                        setState(
                          () {
                            loading = true;
                          },
                        );
                        dynamic result = await _auth.signInAnon();
                        if (result == null) {
                          setState(
                            () {
                              error = "Please try again";
                              loading = false;
                            },
                          );
                        }
                      },
                      icon: Icon(Icons.person_add_disabled),
                    ),
                  ],
                ),
              ),
            ),
          );
  }
}
