import 'package:Demen_Buster/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:Demen_Buster/screens/diagnose/diagnose.dart';
import 'package:Demen_Buster/screens/carecentres/carecentres.dart';
import 'package:Demen_Buster/screens/info/info.dart';

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
       body:Center(
            child: new Container(
            width:double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors:[
                  Colors.yellow[500],
                  Colors.yellow[400],
                  Colors.yellow[300],
                  Colors.yellow[200],
                  Colors.yellow[100],
                ] )
            ),
            child: Column(children: <Widget>[
              Image.asset("assets/images/AlzheimersAwarenessRibbon.jpg",
              height: 210.0),
              SizedBox(
                height:20.0,
              ),
              Container(  
              margin: EdgeInsets.all(25),  
              child: FlatButton(  
                child: Text('Diagnose', style: TextStyle(fontSize: 20.0),),  
                color: Colors.blueAccent,  
                textColor: Colors.white,  
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Diagnose()),
                  );
                },  
              )
            ),

              Container(  
              margin: EdgeInsets.all(25),  
              child: FlatButton(  
                child: Text('Care centres', style: TextStyle(fontSize: 20.0),),  
                color: Colors.blueAccent,  
                textColor: Colors.white,  
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Carecentres()),
                  );
                },  
              )
            ),

              Container(  
              margin: EdgeInsets.all(25),  
              child: FlatButton(  
                child: Text('Know about Dementia', style: TextStyle(fontSize: 20.0),),  
                color: Colors.blueAccent,  
                textColor: Colors.white,  
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Info()),
                  );
                },  
              )
            ),
          ]
         )
      ),
       )
    );
  }
}
