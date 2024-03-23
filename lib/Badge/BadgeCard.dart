import 'package:demo/Badge/BadgeClass.dart';
import 'package:flutter/material.dart';
import '../dialog/badgeDialog.dart';

class BadgeCard extends StatelessWidget {
  final ChallangeBadge badge;

  BadgeCard({
    required this.badge,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.fromLTRB(0, 2, 0, 0),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  // print("badge: $badge");
                  showDialog(
                      context: context,
                      builder: (context) =>
                          InformationBadgeRecive(badge: badge));
                },
                child: Image.asset(
                  'assets/img/medal.png',
                  width: 55,
                  height: 55,
                ),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  backgroundColor: badge.level > 0
                      ? Color.fromARGB(255, 220, 255, 81)
                      : Color.fromARGB(255, 227, 227, 227),
                  padding: EdgeInsets.all(20),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 7,
            child: Text(
              badge.name,
              style: TextStyle(fontSize: 10.0),
            ),
          ),
        ],
      ),
    );
  }
}
