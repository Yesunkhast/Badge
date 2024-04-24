import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:demo/Badge/BadgeClass.dart';
import 'package:flutter/material.dart';
import '../dialog/badgeDialog.dart';
import 'package:badges/badges.dart' as badges;

class BadgeCard extends StatelessWidget {
  final ChallangeBadge badge;

  BadgeCard({
    super.key,
    required this.badge,
  });

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Function to update data in Firestore
  Future<void> updateData() async {
    try {
      await _firestore.collection('Badges').doc(badge.ID).update({
        'isShowed': false,
      });
      print('Data updated successfully');
    } catch (e) {
      print('Error updating data: ${e.toString()}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.fromLTRB(0, 2, 0, 0),
      child: Column(
        children: [
          badges.Badge(
              // showBadge: badge.isShowed,
              showBadge: badge.level > 0 ? badge.isShowed : false,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // print("badge: $badge");
                      updateData();
                      showDialog(
                          context: context,
                          builder: (context) =>
                              InformationBadgeRecive(badge: badge));
                    },
                    // ignore: sort_child_properties_last
                    child: Image.asset(
                      'assets/img/medal.png',
                      width: 55,
                      height: 55,
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      backgroundColor: badge.level > 0
                          ? const Color.fromARGB(255, 220, 255, 81)
                          : const Color.fromARGB(255, 227, 227, 227),
                      padding: const EdgeInsets.all(20),
                    ),
                  ),
                ],
              )),
          Positioned(
            bottom: 7,
            child: Text(
              badge.name,
              style: const TextStyle(fontSize: 10.0),
            ),
          ),
        ],
      ),
    );
  }
}
