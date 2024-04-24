import 'package:demo/Badge/BadgeClass.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class InformationBadgeRecive extends StatelessWidget {
  final ChallangeBadge badge;
  const InformationBadgeRecive({super.key, required this.badge});

  Widget _buildUI() {
    return Center(
      child: Lottie.asset("assets/animation/Animation.json"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          badge.level > 0 ? _buildUI() : SizedBox(),
          Dialog(
              child: Container(
            decoration: BoxDecoration(
                color: const Color(0xffEDEDED),
                borderRadius: BorderRadius.circular(15)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 10.0,
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    // SizedBox(
                    //   height: 10.0,
                    // ),
                    ElevatedButton(
                      onPressed: () {
                        // // print("badge: $badge");
                        // showDialog(
                        //     context: context,
                        //     builder: (context) =>
                        //         InformationBadgeRecive(badge: badge));
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
                ),
                Positioned(
                  bottom: 7,
                  child: Text(
                    badge.name,
                    style: const TextStyle(fontSize: 10.0),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text('Badge level: ${badge.level}'),
                // Text('Badge ID: ${badge.ID}'),
                Container(
                  padding: const EdgeInsets.all(5),
                  margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  // ignore: sort_child_properties_last
                  child: badge.level == 0
                      ? const Text(
                          'Таны энэхүү badge-ыг одоохондоо аваагүй байна!',
                          style: TextStyle(fontSize: 10),
                        )
                      : Text(
                          'Та ${badge.levelFill} '
                          '${badge.caption}',
                          style: const TextStyle(fontSize: 10),
                        ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color.fromARGB(255, 220, 255, 81),
                  ),
                ),
              ],
            ),
          )),
        ],
      ),
    );
  }
}
