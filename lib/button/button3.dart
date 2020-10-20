import 'package:Demen_Buster/constants.dart';
import 'package:Demen_Buster/screens/info/info.dart';
import 'package:flutter/material.dart';

class Button3 extends StatelessWidget {
  var _name;
  var _imageUrl;
  var _bgColor;

  Button3(this._name, this._imageUrl, this._bgColor);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Info(),
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
