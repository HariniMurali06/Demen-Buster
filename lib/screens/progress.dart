import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:provider/provider.dart';

class Progress extends StatefulWidget {
  @override
  _ProgressState createState() => _ProgressState();
}

class _ProgressState extends State<Progress> {
  int count = 0;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  List<Widget> list = [];
  String getUID() {
    final User user = _auth.currentUser;
    return user.uid;
  }

  List<Widget> setData(uid) {
    final list1=[];
    Future<QuerySnapshot> _shot = FirebaseFirestore.instance
        .collection("/scores/${uid}/nestedScores/")
        .get();
    _shot.then((val) {
      count += 1;
      print("/scores/${uid}/nestedScores/");
      print(val.size);
      for (var doc in val.docs) {
        print(doc.data()['date']);
        list1.add(Text("hi"));
        //print(list);
      }
    });
    setState(() {
      this.list = list1;
    });
    print(list);
    return list;
  }

  @override
  Widget build(BuildContext context) {
    final String uid = getUID();
    setData(uid);
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Progress"),
      ),
      body: GridView.count(
        crossAxisCount: 1,
        children: list,
      ),
    );
  }
}
