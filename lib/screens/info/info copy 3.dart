import 'package:Demen_Buster/common/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:Demen_Buster/common/constants.dart';
import 'package:Demen_Buster/screens/carecentres/carecentres.dart';
import '../../expansion_card.dart';


class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
        body: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[

        ExpansionCard(
              gif: 'assets/animations/planets.gif',
              title: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Header",
                      style: TextStyle(
                        fontFamily: 'BalooBhai',
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Sub",
                      style: TextStyle(
                          fontFamily: 'BalooBhai', fontSize: 20, color: Colors.white),
                    ),
                  ],
                ),
              ),
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 7),
                  child: Text("Content goes over here !",
                      style: TextStyle(
                          fontFamily: 'BalooBhai',
                          fontSize: 20,
                          color: Colors.white)),
                ),

  //               GestureDetector(
  // // When the child is tapped, show a snackbar.
  //                   onTap: () {
  //                     final snackBar = SnackBar(content: Text("Tap"));

  //                     Scaffold.of(context).showSnackBar(snackBar);
  //                   },
  //                   // The custom button
  //                   child: Container(
  //                     padding: EdgeInsets.all(12.0),
  //                     decoration: BoxDecoration(
  //                       color: Theme.of(context).buttonColor,
  //                       borderRadius: BorderRadius.circular(8.0),
  //                     ),
  //                     child: Text('My Button'),
  //                   ),
  //                 )

                    GestureDetector(
  // When the child is tapped, show a snackbar.
                    onTap: () {
                      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Carecentres(),
          ),
        );
                    },
                    // The custom button
                    child: Container(
                      padding: EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                        color: Theme.of(context).buttonColor,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Text('My Button'),
                    ),
                  )

              ],
              
              
      
            ),


            ExpansionCard(
              gif: 'assets/animations/planets.gif',
              title: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Header",
                      style: TextStyle(
                        fontFamily: 'BalooBhai',
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Sub",
                      style: TextStyle(
                          fontFamily: 'BalooBhai', fontSize: 20, color: Colors.white),
                    ),
                  ],
                ),
              ),
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 7),
                  child: Text("Content goes over here !",
                      style: TextStyle(
                          fontFamily: 'BalooBhai',
                          fontSize: 20,
                          color: Colors.white)),
                )
              ],
            )



        ]));}}