import 'package:Demen_Buster/common/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:Demen_Buster/common/constants.dart';

import '../../expansion_card.dart';


class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
        body: Center(
            child: ExpansionCard(
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

            
            ));
  }
}