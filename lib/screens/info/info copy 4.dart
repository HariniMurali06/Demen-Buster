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
          backgroundColor: Colors.grey,
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
                height: 50,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: SvgPicture.asset('assets/icons/back.svg'),
                    ),
                    SvgPicture.asset(
                      'assets/icons/3dots.svg',
                      height: 18,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.24,
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