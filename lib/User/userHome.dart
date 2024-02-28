import 'package:demo/User/userBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class UserHome extends StatelessWidget {
  const UserHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: UserBar(
        key: Key("234"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(20.0, 25.0, 10.0, 10.0),
              color: const Color.fromARGB(255, 246, 245, 245),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
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
            Text("Мэдээлэл"),
            Container(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
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
                        "Хувийн мэдээлэл",
                        style: TextStyle(color: Colors.black),
                      ),
                      SizedBox(width: 130),
                      Icon(Icons.arrow_right, color: Colors.black),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
