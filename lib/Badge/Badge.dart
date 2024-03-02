import 'package:demo/Badge/BadgeClass.dart';
import 'package:demo/Badge/BadgeHome.dart';
import 'package:flutter/material.dart';

class BadgeCard extends StatelessWidget {
  final ChallangeBadge badge;

  const BadgeCard({
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
                  badge.name,
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
