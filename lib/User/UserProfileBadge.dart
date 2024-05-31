// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:demo/Badge/BadgeHome.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
// import 'package:flutter/rendering.dart';

class ProfileBadge extends StatefulWidget {
  const ProfileBadge({super.key});

  @override
  State<ProfileBadge> createState() => _ProfileBadgeState();
}

class _ProfileBadgeState extends State<ProfileBadge> {
  int badgeCount = 0;
  // ContainerAppBar

  @override
  Widget build(BuildContext context) {
    return badges.Badge(
      // ignore: unnecessary_brace_in_string_interps
      badgeContent: Text("${badgeCount}"),
      showBadge: badgeCount > 0,
      child: Stack(
        alignment: Alignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              print(badgeCount);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const BadgeHome()),
              );
            },
            // ignore: sort_child_properties_last
            child: Image.asset(
              width: 55,
              height: 55,
              'assets/img/medal.png',
            ),
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              // backgroundColor:  Color.fromARGB(255, 222, 222, 222),
              backgroundColor: const Color.fromARGB(255, 220, 255, 81),
              padding: const EdgeInsets.all(20),
            ),
          ),
          const Positioned(
            bottom: 7,
            child: Text(
              "Badge's",
              style: TextStyle(fontSize: 10.0),
            ),
          ),
        ],
      ),
    );
  }
}
