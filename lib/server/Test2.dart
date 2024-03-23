// import 'package:flutter/material.dart';
// // import 'package:firebase_firestore/firebase_firestore.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

// class Test2 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return StreamBuilder<QuerySnapshot>(
//       stream: FirebaseFirestore.instance.collection("/Badge").snapshots(),
//       builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
//         if (!snapshot.hasData) return Text("There is no expense");
//         return ListView(children: getExpenseItems(snapshot));
//       },
//     );
//   }

//   List<Widget> getExpenseItems(AsyncSnapshot<QuerySnapshot> snapshot) {
//     return snapshot.data!.docs
//         .map((doc) => ListTile(
//               title: Text(doc["ID"]),
//               subtitle: Text(doc["badgeName"].toString()),
//             ))
//         .toList();
//   }
// }
