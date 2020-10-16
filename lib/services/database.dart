import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:Demen_Buster/model/score.dart';

class DataBase {
  final String uid;
  DataBase({this.uid});

  final CollectionReference userData =
      FirebaseFirestore.instance.collection('scores');
  Future updateUserData(int user_score, String date) async {
    return await userData.doc(uid).set({
      'Date': date,
      'user_score': user_score,
    });
  }

  //score list
  List<Score> _scoreList(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return Score(date: 'doc.user_data', user_score: 20);
    });
  }

  Stream<QuerySnapshot> get score {
    return userData.snapshots();
  }
}
