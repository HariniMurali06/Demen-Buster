import 'package:flutter/material.dart';

const textInputDecoration = InputDecoration(
  fillColor: Colors.blue,
  filled: true,
  enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.black, width: 2.0)),
  focusedBorder:
      OutlineInputBorder(borderSide: BorderSide(color: Colors.red, width: 2.0)),
);

const kPrimaryColor = Color(0xFF6F35A5);
const kPrimaryLightColor = Color(0xFFF1E6FF);