import 'package:demo/Badge/Badge.dart';
import 'package:demo/User/userBar.dart';
import 'package:flutter/material.dart';
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
        name: "Badge7", caption: "2-р түвшин", type: "type2", level: 7),
  ];
  static const String title = "Bagde's";
  static const List<String> _BadgeType = [
    "Type1",
    "Type2",
    "Type3",
    "Type4",
    "Type5",
    "Type6",
    "Type7",
    "Type8",
    "Type9",
    "Type10"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: UserBar(ner: title),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text(_BadgeType[0]),
                padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
              ),
              Container(
                height: 115,
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:
                          badges.map((e) => BadgeCard(badge: e)).toList()),
                ),
              ),
              Container(
                child: Text(_BadgeType[1]),
                padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:
                          badges.map((e) => BadgeCard(badge: e)).toList()),
                ),
              ),
              Container(
                child: Text(_BadgeType[2]),
                padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:
                          badges.map((e) => BadgeCard(badge: e)).toList()),
                ),
              ),
              Container(
                child: Text(_BadgeType[3]),
                padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:
                          badges.map((e) => BadgeCard(badge: e)).toList()),
                ),
              ),
              Container(
                child: Text(_BadgeType[4]),
                padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:
                          badges.map((e) => BadgeCard(badge: e)).toList()),
                ),
              ),
              Container(
                child: Text(_BadgeType[5]),
                padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:
                          badges.map((e) => BadgeCard(badge: e)).toList()),
                ),
              ),
              Container(
                child: Text(_BadgeType[6]),
                padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:
                          badges.map((e) => BadgeCard(badge: e)).toList()),
                ),
              ),
              Container(
                child: Text(_BadgeType[7]),
                padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:
                          badges.map((e) => BadgeCard(badge: e)).toList()),
                ),
              ),
              Container(
                child: Text(_BadgeType[8]),
                padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:
                          badges.map((e) => BadgeCard(badge: e)).toList()),
                ),
              ),
              Container(
                child: Text(_BadgeType[9]),
                padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:
                          badges.map((e) => BadgeCard(badge: e)).toList()),
                ),
              )
            ],
          ),
        ));
  }
}
