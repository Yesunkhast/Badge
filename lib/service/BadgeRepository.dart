// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class BadgeRepository extends StatefulWidget {
//   const BadgeRepository({Key? key}) : super(key: key);

//   @override
//   State<BadgeRepository> createState() => _BadgeRepositoryState();
// }

// class _BadgeRepositoryState extends State<BadgeRepository> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: StreamBuilder(
//       stream: FirebaseFirestore.instance.collection('Badge').snapshots(),
//       builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
//         return Container(
//             width: 200,
//             height: 500,
//             child: ListView.builder(
//               itemCount: streamSnapshot.data?.docs.length,
//               itemBuilder: (ctx, index) =>
//                   Text(streamSnapshot.data?.docs[index]['ID']),
//             ));
//       },
//     ));
//   }
// }

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

// DocumentSnapshot snapshot;

class ProductList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder(
      stream: FirebaseFirestore.instance
          .collection('chats/XYSDa16jZBO5CUMwIk0h/messages')
          .snapshots(),
      builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
        return ListView.builder(
          itemCount: streamSnapshot.data?.docs.length,
          itemBuilder: (ctx, index) =>
              Text(streamSnapshot.data?.docs[index]['ID']),
        );
      },
    ));
  }
}
