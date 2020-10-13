import 'package:cloud_firestore/cloud_firestore.dart';

class DataBase {
  final String uid;
  DataBase({this.uid});

  final CollectionReference userData =
      FirebaseFirestore.instance.collection('data');
  Future updateUserData(int score, String date) async {
    return await userData.doc(uid).set({
      'Date': date,
      'score': score,
    });
  }
}
