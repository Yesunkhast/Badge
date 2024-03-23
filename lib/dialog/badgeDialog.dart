// import 'package:confetti/confetti.dart';
// ignore_for_file: must_be_immutable

import 'package:demo/Badge/BadgeCard.dart';
import 'package:demo/Badge/BadgeClass.dart';
import 'package:flutter/material.dart';

class InformationBadgeRecive extends StatelessWidget {
  final ChallangeBadge badge;
  InformationBadgeRecive({required this.badge});

  bool isPlaying = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
        // alignment: Alignment.topCenter,
        children: [
          Center(
            child: Dialog(
                child: Container(
              decoration: BoxDecoration(
                  color: Color(0xffEDEDED),
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  BadgeCard(badge: badge),
                  SizedBox(
                    height: 5,
                  ),
                  Text('Badge level: ${badge.level}'),
                  // Text('Badge ID: ${badge.ID}'),
                  Container(
                    padding: EdgeInsets.all(5),
                    margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: badge.level == 0
                        ? Text(
                            'Таны энэхүү badge-ыг одоохондоо аваагүй байна!',
                            style: TextStyle(fontSize: 10),
                          )
                        : Text(
                            'Та ${badge.levelFill} '
                            '${badge.caption}',
                            style: TextStyle(fontSize: 10),
                          ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color.fromARGB(255, 220, 255, 81),
                    ),
                  ),
                ],
              ),
            )),
          ),
        ]);
  }
}
