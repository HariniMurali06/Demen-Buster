import 'package:Demen_Buster/common/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:Demen_Buster/common/constants.dart';
import 'package:Demen_Buster/screens/carecentres/carecentres.dart';
import '../../expansion_card.dart';
import 'package:flutter_svg/svg.dart';


class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
        return Scaffold(
          backgroundColor: Colors.pink[100],
      body: SingleChildScrollView(
        child: Container(
        
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/know1.png'),
              alignment: Alignment.center,
              fit: BoxFit.fitWidth,
            ),
          ),
          
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    FlatButton.icon(
                        icon: Icon(Icons.arrow_back_ios),
                        onPressed: () async {
                          Navigator.pop(context);
                        },
                        label: Text("Back"),
                      ),
                    
                    FlatButton.icon(
                        icon: Icon(Icons.apps_sharp),
                        onPressed: () async {
                          Navigator.pop(context);
                        },
                        label: Text("About Alzheimer's"),
                      ),
                    
                  ], 
                ), 
                
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.3,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: kBackgroundColor,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(50),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[

                    ]
                  )
                )
              )
            ]
          )
        )
      )
    );
  }
}