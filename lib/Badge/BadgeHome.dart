// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import '../User/userBar.dart';
// // import '../dialog/badgeDialog.dart';
// import 'BadgeClass.dart';
// import 'BadgeCard.dart';

// class BadgeHome extends StatefulWidget {
//   @override
//   State<BadgeHome> createState() => _BadgeHomeState();
// }

// class _BadgeHomeState extends State<BadgeHome> {
//   static const String title = "Badge's";

//   static const List<String> _badgeType = [
//     "type1",
//     "type2",
//     "type3",
//     "type4",
//     "type5",
//     "type6",
//     "type7",
//     "type8",
//     "type9",
//     "type10"
//   ];

//   late Stream<QuerySnapshot> _badgeStream;

//   @override
//   void initState() {
//     super.initState();
//     _getBadgeStream();
//   }

//   _getBadgeStream() {
//     final CollectionReference badgesCollection =
//         FirebaseFirestore.instance.collection('Bagde');
//     setState(() {
//       _badgeStream = badgesCollection.snapshots();
//     });
//   }

//   Widget _buildBadgeList(QuerySnapshot snapshot, String type) {
//     final badges = snapshot.docs
//         .map((doc) => ChallangeBadge(
//               ID: doc["ID"],
//               name: doc['name'],
//               caption: doc['caption'],
//               type: doc['type'],
//               level: doc['level'],
//               levelFill: doc["levelFill"],
//               isShowed: doc["isShowed"],
//             ))
//         .where((badge) => badge.type == type)
//         .toList();
//     print("#####${badges.length}");
//     return SingleChildScrollView(
//       scrollDirection: Axis.horizontal,
//       child: Row(
//         children: badges
//             .map((badge) => Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: BadgeCard(badge: badge),
//                 ))
//             .toList(),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: UserBar(ner: title),
//       body: SingleChildScrollView(
//         scrollDirection: Axis.vertical,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: _badgeType.map((type) {
//             return Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
//                   child: Text(type),
//                 ),
//                 Container(
//                   height: 150,
//                   padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
//                   child: StreamBuilder<QuerySnapshot>(
//                     stream: _badgeStream,
//                     builder: (context, snapshot) {
//                       if (snapshot.connectionState == ConnectionState.waiting) {
//                         return const Center(child: CircularProgressIndicator());
//                       } else if (snapshot.hasError) {
//                         // print('error : ${snapshot.error}');
//                         return Text('Error: ${snapshot.error}');
//                       } else if (snapshot.connectionState ==
//                           ConnectionState.done) {
//                         return (_buildBadgeList(snapshot.data!, type));
//                       } else {
//                         return _buildBadgeList(snapshot.data!, type);
//                       }
//                     },
//                   ),
//                 ),
//                 // Text("${dataArray}")
//               ],
//             );
//           }).toList(),
//         ),
//       ),
//     );
//   }
// }
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../User/userBar.dart';
// Ensure this import is uncommented if you're using anything from it
// import '../dialog/badgeDialog.dart';
import 'BadgeClass.dart';
import 'BadgeCard.dart';

class BadgeHome extends StatefulWidget {
  @override
  State<BadgeHome> createState() => _BadgeHomeState();
}

class _BadgeHomeState extends State<BadgeHome> {
  static const String title = "Badge's";
  static const List<String> _badgeType = [
    "type1",
    "type2",
    "type3",
    "type4",
    "type5",
    "type6",
    "type7",
    "type8",
    "type9",
    "type10"
  ];

  late Stream<QuerySnapshot> _badgeStream;

  @override
  void initState() {
    super.initState();
    _getBadgeStream();
  }

  _getBadgeStream() {
    final CollectionReference badgesCollection = FirebaseFirestore.instance
        .collection('Badge'); // Corrected collection name
    setState(() {
      _badgeStream = badgesCollection.snapshots();
    });
  }

  Widget _buildBadgeList(QuerySnapshot snapshot, String type) {
    final badges = snapshot.docs
        .map((doc) => ChallangeBadge(
              ID: doc["ID"],
              name: doc['name'],
              caption: doc['caption'],
              type: doc['type'],
              level: doc['level'],
              levelFill: doc["levelFill"],
              isShowed: doc["isShowed"],
            ))
        .where((badge) => badge.type == type)
        .toList();

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: badges
            .map((badge) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: BadgeCard(badge: badge),
                ))
            .toList(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UserBar(ner: title),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: _badgeType.map((type) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Text(type),
                ),
                Container(
                  height: 150,
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: StreamBuilder<QuerySnapshot>(
                    stream: _badgeStream,
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const Center(child: CircularProgressIndicator());
                      } else if (snapshot.hasError) {
                        return Text('Something went wrong');
                      }
                      return _buildBadgeList(snapshot.data!, type);
                    },
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
