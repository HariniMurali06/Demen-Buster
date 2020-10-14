import 'package:Demen_Buster/common/constants.dart';
import 'package:flutter/material.dart';
import 'package:Demen_Buster/services/auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:Demen_Buster/common/loading.dart';
import 'package:Demen_Buster/common/rounded_button.dart';
import 'package:Demen_Buster/common/rounded_input_field.dart';
import 'package:Demen_Buster/common/rounded_password_field.dart';
import 'package:Demen_Buster/common/already_have_an_account_acheck.dart';
import 'package:Demen_Buster/screens/authenticate/register.dart';

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
    Size size = MediaQuery.of(context).size;
    var child;
        return 
            // ? Loading()
             Scaffold(
              body: Container(
          height: size.height,
          width: double.infinity,
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Positioned( 
                height: 870,
                child: Image.asset(
                  "assets/images/bg1.png",
                  // width: size.width * 0.3,
                ),
              ),
            
              SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  
                  SizedBox(height: size.height * 0.03),
                  Image.asset(
                    "assets/images/logo.png",
                  
                  ),
                  SizedBox(height: size.height * 0.03),
                  
                  // RoundedInputField(
                  //   hintText: "Your Email",
                  //   // validator: (val) => val.isEmpty ? "Enter an Email" : null,
                  //   //         onChanged: (val) {
                  //   //           setState(() => email = val);
                  //   //         },
                  // ),
                  // RoundedPasswordField(
                  //   onChanged: (value) {},
                  // ),
                  Form(
                key: _formKey,
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      cursorColor: kPrimaryColor,
                      
                      decoration: InputDecoration(
                        fillColor: Colors.white, filled:true,
    
                        icon: Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                        hintText: "Email ID",
                        contentPadding: new EdgeInsets.symmetric(vertical: 18.0, horizontal: 20.0),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0)),
                        
                      ),
                      validator: (val) => val.isEmpty ? "Enter an Email" : null,
                      onChanged: (val) {
                        setState(() => email = val);
                      },
                    ),
                    SizedBox( 
                      height: 20,
                    ),
                    TextFormField(
                                     decoration: InputDecoration(
                        fillColor: Colors.white, filled:true,
    
                        icon: Icon(
                          Icons.lock,
                          color: Colors.white,
                        ),
                        hintText: "Password",
                        contentPadding: new EdgeInsets.symmetric(vertical: 18.0, horizontal: 20.0),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0)),
                        
                      ),
                      validator: (val) => val.length < 6
                          ? "Enter a Password with minimum 6 Characters"
                          : null,
                      obscureText: true,
                      onChanged: (val) {
                        setState(() => passWord = val);
                      },
                    ),
                  ]
                )
                  ),
                   SizedBox( 
                      height: 20,
                    ),
                  RoundedButton(
                    text: "LOGIN",
                    press: () async {
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
                  SizedBox(height: size.height * 0.03),
                  AlreadyHaveAnAccountCheck(
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Register();
                          },
                        ),
                      );
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
        ],
      ),
    ),
            );
  }
}

   