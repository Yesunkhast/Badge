import 'package:demo/Badge/Badge.dart';
import 'package:demo/Badge/BadgeClass.dart';
import 'package:flutter/material.dart';

class BadgeContainer extends StatefulWidget {
  const BadgeContainer({super.key});

  @override
  State<BadgeContainer> createState() => _BadgeContainerState();
}

class _BadgeContainerState extends State<BadgeContainer> {
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
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: badges.map((e) => BadgeCard(badge: e)).toList()),
      ),
    );
  }
}
