import 'package:demo/service/test.dart';

import '../Badge/BadgeClass.dart';
import '../User/UserProfileBadge.dart';
import '../User/UserBar.dart';
import '../dialog/badgeDialog.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
import '../service/getData.dart';

class UserHome extends StatefulWidget {
  const UserHome({Key? key}) : super(key: key);

  @override
  State<UserHome> createState() => _UserHomeState();
}

class _UserHomeState extends State<UserHome> {
  final String title = "Хэрэглэгч";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: UserBar(
        ner: title,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100,
              color: const Color.fromARGB(255, 246, 245, 245),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.fromLTRB(20, 20, 0, 10),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset(
                            "assets/nothing/HandToHand.jpg",
                            fit: BoxFit.cover,
                            height: 60.0,
                            width: 60.0,
                          ),
                        ),
                        const SizedBox(width: 16.0),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '72222222',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              'User Name',
                              style: TextStyle(
                                fontSize: 13.0,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  const ProfileBadge(),
                  const SizedBox(width: 10)
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(children: [
                        Container(
                          height: 100.0,
                          width: 70.0,
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 63, 237, 69),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        const Text(
                          "Түвшин 1",
                          style: TextStyle(fontSize: 10.0),
                        ),
                      ]),
                      Column(children: [
                        Container(
                          height: 100.0,
                          width: 70.0,
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 48, 164, 193),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        const Text(
                          "Түвшин 2",
                          style: TextStyle(fontSize: 10.0),
                        ),
                      ]),
                      Column(children: [
                        Container(
                          height: 100.0,
                          width: 70.0,
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 12, 120, 197),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        const Text(
                          "Түвшин 3",
                          style: TextStyle(fontSize: 10.0),
                        ),
                      ])
                    ],
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  SizedBox(
                    width: 356,
                    height: 40,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff17181c),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9),
                        ),
                      ),
                      onPressed: () {
                        ChallangeBadge badge = ChallangeBadge(
                            ID: "100",
                            name: "Top user",
                            caption: "шилдэг нь",
                            level: 10,
                            type: "type1",
                            levelFill: 100,
                            isShowed: false);
                        showDialog(
                            context: context,
                            builder: (context) =>
                                InformationBadgeRecive(badge: badge));
                      },
                      child: const Text(
                        "Түвшин ахих",
                        style: TextStyle(color: Colors.white, fontSize: 10.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: const Text("Мэдээлэл"),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: SizedBox(
                width: 420,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return MyApp();
                    }));
                  },
                  child: Row(
                    children: [
                      // Image.asset(""),
                      const Icon(
                        Icons.supervised_user_circle,
                        color: Colors.black,
                      ),
                      const Text(
                        " Хувийн мэдээлэл",
                        style: TextStyle(color: Colors.black),
                      ),
                      const Spacer(),
                      Transform.rotate(
                        angle: math.pi,
                        child: const Icon(
                          Icons.arrow_back_ios,
                          color: Color.fromRGBO(0, 0, 0, 1),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 5),
              child: SizedBox(
                width: 420,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return UpdateData();
                    }));
                  },
                  child: Row(
                    children: [
                      // Image.asset(""),
                      const Icon(
                        Icons.card_giftcard,
                        color: Colors.black,
                      ),
                      const Text(
                        " Төлбөрийн карт",
                        style: TextStyle(color: Colors.black),
                      ),
                      const Spacer(),
                      Transform.rotate(
                        angle: math.pi,
                        child: const Icon(
                          Icons.arrow_back_ios,
                          color: Color.fromRGBO(0, 0, 0, 1),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 20.0, 0, 0),
              child: const Text("Тохиргоо"),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: SizedBox(
                width: 420,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      // Image.asset(""),
                      const Icon(
                        Icons.settings,
                        color: Colors.black,
                      ),
                      const Text(
                        " Систем тохиргоо",
                        style: TextStyle(color: Colors.black),
                      ),
                      const Spacer(),
                      Transform.rotate(
                        angle: math.pi,
                        child: const Icon(
                          Icons.arrow_back_ios,
                          color: Color.fromRGBO(0, 0, 0, 1),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 5),
              child: SizedBox(
                width: 420,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      // Image.asset(""),
                      const Icon(
                        Icons.call,
                        color: Colors.black,
                      ),
                      const Text(
                        " Дуудлагын тохиргоо",
                        style: TextStyle(color: Colors.black),
                      ),
                      const Spacer(),
                      Transform.rotate(
                        angle: math.pi,
                        child: const Icon(
                          Icons.arrow_back_ios,
                          color: Color.fromRGBO(0, 0, 0, 1),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 20.0, 0, 0),
              child: const Text("Бусад"),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: SizedBox(
                width: 420,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      // Image.asset(""),
                      const Icon(
                        Icons.question_mark_outlined,
                        color: Colors.black,
                      ),
                      const Text(
                        " Тусламж",
                        style: TextStyle(color: Colors.black),
                      ),
                      const Spacer(),
                      Transform.rotate(
                        angle: math.pi,
                        child: const Icon(
                          Icons.arrow_back_ios,
                          color: Color.fromRGBO(0, 0, 0, 1),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 5),
              child: SizedBox(
                width: 420,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Row(
                    children: [
                      // Image.asset(""),
                      Icon(
                        Icons.rounded_corner,
                        color: Colors.black,
                      ),
                      Text(
                        " Change language",
                        style: TextStyle(color: Colors.black),
                      ),
                      Spacer(),
                      Text(
                        "MN / EN",
                        style: TextStyle(fontSize: 10),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 5),
              child: SizedBox(
                width: 420,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      // Image.asset(""),
                      const Icon(
                        Icons.ramp_left,
                        color: Colors.black,
                      ),
                      const Text(
                        " Гарах",
                        style: TextStyle(color: Colors.black),
                      ),
                      const Spacer(),
                      Transform.rotate(
                        angle: math.pi,
                        child: const Icon(
                          Icons.arrow_back_ios,
                          color: Color.fromRGBO(0, 0, 0, 1),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 20.0, 0, 0),
              child: const Text("Холбоо барих"),
            ),
            Container(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 3),
                child: Image.asset(
                  "assets/nothing/zurg.jpg",
                  fit: BoxFit.cover,
                )),
            const Center(
              child: Text("Yesuu's version"),
            ),
            const SizedBox(
              height: 30.0,
            )
          ],
        ),
      ),
    );
  }
}
