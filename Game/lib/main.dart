import 'package:flutter/material.dart';

void main() => runApp(Game());

class Game extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Game"),
        ),
      ),
    );
  }
}
