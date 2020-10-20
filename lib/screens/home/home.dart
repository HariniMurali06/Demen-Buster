import 'package:Demen_Buster/button/button4.dart';
import 'package:Demen_Buster/button/button5.dart';
import 'package:Demen_Buster/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:Demen_Buster/constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:Demen_Buster/button/button1.dart';
import 'package:Demen_Buster/button/button2.dart';
import 'package:Demen_Buster/button/button3.dart';

class Home extends StatelessWidget {
  final AuthServices _auth = AuthServices();
  @override
  Widget build(BuildContext context) {
    builddiagnose() {
      return Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 30,
          ),
          child: Column(
          children: <Widget>[
            Button1(
            'Start Diagnosis',
            'assets/icons/diagicon.png',
            kCyanColor,
            ),
            SizedBox(
            height: 20,
            ),
          ],
        ),
      );
    }

    buildhosp() {
      return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 30,
        ),
        child: Column(
          children: <Widget>[
            Button2(
            'Hospitals & Care Centres',
            'assets/icons/hospicon.png',
            kYellowColor,
            ),
            SizedBox(
            height: 20,
            ),
          ],
        ),
      );
    }

    buildknow() {
      return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 30,
        ),
        child: Column(
          children: <Widget>[
            Button3(
            'What\'s Alzheimer\'s Disease?',
            'assets/icons/knowicon.png',
            kPinkColor,
            ),
            SizedBox(
            height: 20,
            ),
          ],
        ),
      );
    }

    buildprog() {
      return Padding(
        padding: EdgeInsets.symmetric(
        horizontal: 30,
        ),
        child: Column(
          children: <Widget>[
            Button4(
            'Know your Progress',
            'assets/icons/progress.png',
            kPinkColor,
            ),
            SizedBox(
            height: 20,
            ),
          ],
        ),
      );
    }

    buildneuro() {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 30,
        ),
        child: Column(
          children: <Widget>[
            Button5(
            'Consult Neurologists',
            'assets/icons/neuro.png',
            kCyanColor,
            ),
            SizedBox(
            height: 20,
            ),
          ],
        ),
      );
    }

    return Scaffold(
    backgroundColor: kBackgroundColor,
    body: SafeArea(
      bottom: false,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SvgPicture.asset('assets/icons/menu.svg'),
                FlatButton.icon(
                  icon: Icon(Icons.person),
                  onPressed: () async {
                    await _auth.signOut();
                  },
                  label: Text("Logout"),
                ),
                SvgPicture.asset('assets/icons/profile.svg'),
                ],
              ),
            ),
            SizedBox(
            height: 20,
            ),
            Image.asset(
            "assets/images/ready.png",
            ),
            builddiagnose(),
            SizedBox(
            height: 20,
            ),
            buildprog(),
            SizedBox(
            height: 20,
            ),
            Image.asset(
            "assets/images/hosp.png",
            ),
            buildhosp(),
            SizedBox(
            height: 20,
            ),
            buildneuro(),
            SizedBox(
            height: 20,
            ),
            Image.asset(
            "assets/images/know.png",
            ),
            SizedBox(
            height: 20,
            ),
            buildknow(),
            ]
          )
        )
      )
    );
  }
}
