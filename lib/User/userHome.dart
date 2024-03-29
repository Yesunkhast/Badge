import 'package:demo/Badge/UserProfileBadge.dart';
import 'package:demo/User/userBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:math' as math;

class UserHome extends StatelessWidget {
  const UserHome({Key? key}) : super(key: key);
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
                    padding: EdgeInsets.fromLTRB(20, 20, 0, 10),
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
                        SizedBox(width: 16.0),
                        Column(
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

                  ///
                  // Widget
                  ///
                  SizedBox(
                    width: 90,
                  ),
                  ProfileBadge(),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(children: [
                        Container(
                          height: 100.0,
                          width: 70.0,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 63, 237, 69),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          "Түвшин 1",
                          style: TextStyle(fontSize: 10.0),
                        ),
                      ]),
                      Column(children: [
                        Container(
                          height: 100.0,
                          width: 70.0,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 48, 164, 193),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          "Түвшин 2",
                          style: TextStyle(fontSize: 10.0),
                        ),
                      ]),
                      Column(children: [
                        Container(
                          height: 100.0,
                          width: 70.0,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 12, 120, 197),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          "Түвшин 3",
                          style: TextStyle(fontSize: 10.0),
                        ),
                      ])
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  SizedBox(
                    width: 356,
                    height: 40,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff17181c),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9),
                        ),
                      ),
                      onPressed: () {
                        print("Түвшин ахих");
                      },
                      child: Text(
                        "Түвшин ахих",
                        style: TextStyle(color: Colors.white, fontSize: 10.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Text("Мэдээлэл"),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: SizedBox(
                width: 420,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {
                    print("Elevated button");
                  },
                  child: Row(
                    children: [
                      // Image.asset(""),
                      Icon(
                        Icons.supervised_user_circle,
                        color: Colors.black,
                      ),
                      Text(
                        " Хувийн мэдээлэл",
                        style: TextStyle(color: Colors.black),
                      ),
                      SizedBox(width: 136.3),
                      Transform.rotate(
                        angle: math.pi,
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: const Color.fromRGBO(0, 0, 0, 1),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 5),
              child: SizedBox(
                width: 420,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {
                    print("Elevated button");
                  },
                  child: Row(
                    children: [
                      // Image.asset(""),
                      Icon(
                        Icons.card_giftcard,
                        color: Colors.black,
                      ),
                      Text(
                        " Төлбөрийн карт",
                        style: TextStyle(color: Colors.black),
                      ),
                      SizedBox(width: 145.0),
                      Transform.rotate(
                        angle: math.pi,
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: const Color.fromRGBO(0, 0, 0, 1),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 20.0, 0, 0),
              child: Text("Тохиргоо"),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: SizedBox(
                width: 420,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {
                    print("Elevated button");
                  },
                  child: Row(
                    children: [
                      // Image.asset(""),
                      Icon(
                        Icons.settings,
                        color: Colors.black,
                      ),
                      Text(
                        " Систем тохиргоо",
                        style: TextStyle(color: Colors.black),
                      ),
                      SizedBox(width: 139),
                      Transform.rotate(
                        angle: math.pi,
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: const Color.fromRGBO(0, 0, 0, 1),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 5),
              child: SizedBox(
                width: 420,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {
                    print("Elevated button");
                  },
                  child: Row(
                    children: [
                      // Image.asset(""),
                      Icon(
                        Icons.call,
                        color: Colors.black,
                      ),
                      Text(
                        " Дуудлагын тохиргоо",
                        style: TextStyle(color: Colors.black),
                      ),
                      SizedBox(width: 115.6),
                      Transform.rotate(
                        angle: math.pi,
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: const Color.fromRGBO(0, 0, 0, 1),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 20.0, 0, 0),
              child: Text("Бусад"),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: SizedBox(
                width: 420,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {
                    print("Elevated button");
                  },
                  child: Row(
                    children: [
                      // Image.asset(""),
                      Icon(
                        Icons.question_mark_outlined,
                        color: Colors.black,
                      ),
                      Text(
                        " Тусламж",
                        style: TextStyle(color: Colors.black),
                      ),
                      SizedBox(width: 190),
                      Transform.rotate(
                        angle: math.pi,
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: const Color.fromRGBO(0, 0, 0, 1),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 5),
              child: SizedBox(
                width: 420,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {
                    print("Elevated button");
                  },
                  child: Row(
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
                      SizedBox(width: 120),
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
              padding: EdgeInsets.fromLTRB(20, 10, 20, 5),
              child: SizedBox(
                width: 420,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {
                    print("Elevated button");
                  },
                  child: Row(
                    children: [
                      // Image.asset(""),
                      Icon(
                        Icons.ramp_left,
                        color: Colors.black,
                      ),
                      Text(
                        " Гарах",
                        style: TextStyle(color: Colors.black),
                      ),
                      SizedBox(width: 215.0),
                      Transform.rotate(
                        angle: math.pi,
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: const Color.fromRGBO(0, 0, 0, 1),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 20.0, 0, 0),
              child: Text("Холбоо барих"),
            ),
            Container(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 3),
                child: Image.asset(
                  "assets/nothing/zurg.jpg",
                  fit: BoxFit.cover,
                )),
            Center(
              child: Text("Yesuu's version"),
            ),
            SizedBox(
              height: 30.0,
            )
          ],
        ),
      ),
    );
  }
}
