import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:provider/provider.dart';

class DataList extends StatefulWidget {
  @override
  _DataListState createState() => _DataListState();
}

class _DataListState extends State<DataList> {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<QuerySnapshot>(context);
    //print(user.docs);
    for (var doc in user.docs) {
      print(doc.data);
    }
    return Container();
  }
}
