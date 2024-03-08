import 'package:demo/Badge/BadgeCard.dart';
import 'package:demo/User/userBar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../service/BadgeRepository.dart';
import 'BadgeClass.dart';

class BadgeHome extends StatefulWidget {
  const BadgeHome({Key? key}) : super(key: key);

  @override
  State<BadgeHome> createState() => _BadgeHomeState();
}

class _BadgeHomeState extends State<BadgeHome> {
  List<ChallangeBadge> badges = [
    ChallangeBadge(
        name: "Badge1", caption: "1-р түвшин", type: "type1", level: 1),
    ChallangeBadge(
        name: "Badge2", caption: "1-р түвшин", type: "type1", level: 2),
    ChallangeBadge(
        name: "Badge3", caption: "1-р түвшин", type: "type1", level: 3),
    ChallangeBadge(
        name: "Badge4", caption: "1-р түвшин", type: "type1", level: 4),
    ChallangeBadge(
        name: "Badge5", caption: "1-р түвшин", type: "type1", level: 5),
    ChallangeBadge(
        name: "Badge6", caption: "1-р түвшин", type: "type1", level: 6),
    ChallangeBadge(
        name: "Badge7", caption: "1-р түвшин", type: "type1", level: 7),
    ChallangeBadge(
        name: "Badge1", caption: "1-р түвшин", type: "type2", level: 2),
    ChallangeBadge(
        name: "Badge2", caption: "2-р түвшин", type: "type2", level: 2),
    ChallangeBadge(
        name: "Badge3", caption: "2-р түвшин", type: "type2", level: 3),
    ChallangeBadge(
        name: "Badge4", caption: "2-р түвшин", type: "type2", level: 4),
    ChallangeBadge(
        name: "Badge5", caption: "2-р түвшин", type: "type2", level: 5),
    ChallangeBadge(
        name: "Badge6", caption: "2-р түвшин", type: "type2", level: 6),
    ChallangeBadge(
        name: "Badge7", caption: "2-р түвшин", type: "type3", level: 7),
  ];
  static const String title = "Bagde's";
  // static const List<String> _BadgeType = [
  //   "type1",
  //   "type2",
  //   "type3",
  //   "type4",
  //   "type5",
  //   "type6",
  //   "type7",
  //   "type8",
  //   "type9",
  //   "type10"
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UserBar(ner: title),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        // Column(
        //     // crossAxisAlignment: CrossAxisAlignment.start,
        //     // children: _BadgeType.map((el) {
        //     //   return Column(
        //     //     crossAxisAlignment: CrossAxisAlignment.start,
        //     //     children: [
        //     //       Container(
        //     //         child: Text(el),
        //     //         padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
        //     //       ),
        //     //       Container(
        //     //         height: 115,
        //     //         padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        //     //         child: SingleChildScrollView(
        //     //           scrollDirection: Axis.horizontal,
        //     //           child: Row(
        //     //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //     //             children: badges
        //     //                 .where((badge) => badge.type == el)
        //     //                 .map((badge) => BadgeCard(badge: badge))
        //     //                 .toList(),
        //     //           ),
        //     //         ),
        //     //       ),
        //     //     ],
        //     //   );
        //     // }).toList(),
        //     ),

        child: ProductList(),
      ),
    );
  }
}
