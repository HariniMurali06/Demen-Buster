import 'package:Demen_Buster/constants.dart';
import 'package:Demen_Buster/screens/carecentres/carecentres.dart';
import 'package:flutter/material.dart';

class Button2 extends StatelessWidget {
  var _name;
  var _imageUrl;
  var _bgColor;

  Button2(this._name, this._imageUrl, this._bgColor);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Carecentres(),
          ),
        );
      },
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: _bgColor.withOpacity(0.5),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: ListTile(
            leading: Image.asset(_imageUrl),
            title: Text(
              _name,
              style: TextStyle(
                color: kTitleTextColor,
                fontWeight: FontWeight.w500,
                fontSize: 25.0

              ),
            ),
          
          ),
        ),
      ),
    );
  }
}
