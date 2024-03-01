import 'package:demo/Badge/BadgeHome.dart';
import 'package:flutter/material.dart';

class ProfileBadge extends StatefulWidget {
  const ProfileBadge({super.key});

  @override
  State<ProfileBadge> createState() => _ProfileBadgeState();
}

class _ProfileBadgeState extends State<ProfileBadge> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      margin: EdgeInsets.fromLTRB(0, 2, 0, 0),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BadgeHome()),
                  );
                },
                child: Image.asset(
                  'assets/img/medal.png',
                  width: 55,
                  height: 55,
                ),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  // backgroundColor:  Color.fromARGB(255, 222, 222, 222),
                  backgroundColor: Color.fromARGB(255, 220, 255, 81),
                  padding: EdgeInsets.all(20),
                ),
              ),
              Positioned(
                bottom: 7,
                child: Text(
                  "Badge's",
                  style: TextStyle(fontSize: 10.0),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
