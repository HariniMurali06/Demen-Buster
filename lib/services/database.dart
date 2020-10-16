import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final String uid;
  DatabaseService({this.uid});
  //ref to collection
  final CollectionReference scoreCollection =
      FirebaseFirestore.instance.collection("scores");

  //
  Future updateUserData(String date, String score) async {
    return await scoreCollection.doc(uid).set({
      'date': date,
      'score': score,
    });
  }

  Future addScore(String date, String score) async {
    scoreCollection.add({date: date, score: score});
  }

  //get scorestreams
  Stream<QuerySnapshot> get scores {
    return scoreCollection.snapshots();
  }
}
