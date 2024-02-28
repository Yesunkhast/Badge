import 'package:flutter/material.dart';
import 'HomeBar.dart';
import './BottomBar.dart';
import 'HomeScrollingNavBar.dart';
// import 'package:intl/intl.dart';

// ignore: must_be_immutable
class Home extends StatelessWidget {
  Home({super.key});

  Map data = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 230, 228, 228),
      appBar: ContainerAppBar(
        key: Key("123"),
      ),
      body: Padding(
        // padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 20.0),
        padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ScrollBar(),
              Padding(
                  padding: EdgeInsets.fromLTRB(30.0, 20.0, 0.0, 0.0),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Худалдаж авах",
                      style: TextStyle(fontSize: 15.0),
                    ),
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: EdgeInsets.all(10.0),
                    child: SizedBox(
                      width: 150,
                      height: 130,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(9),
                          ),
                        ),
                        onPressed: () {
                          print("Elevated button");
                        },
                        child: Row(
                          children: [
                            // Image.asset(""),
                            Icon(Icons.image),
                            SizedBox(width: 8),
                            Text(
                              "Button 2",
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10.0),
                    child: SizedBox(
                      width: 150,
                      height: 130,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(9),
                          ),
                        ),
                        onPressed: () {
                          print("Elevated button");
                        },
                        child: Row(
                          children: [
                            // Image.asset(""),
                            Icon(Icons.image),
                            SizedBox(width: 8),
                            Text(
                              "Button 2",
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: EdgeInsets.all(10.0),
                    child: SizedBox(
                      width: 150,
                      height: 130,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(9),
                          ),
                        ),
                        onPressed: () {
                          print("Elevated button");
                        },
                        child: Row(
                          children: [
                            // Image.asset(""),
                            Icon(Icons.image),
                            SizedBox(width: 8),
                            Text(
                              "Button 2",
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10.0),
                    child: SizedBox(
                      width: 150,
                      height: 130,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(9),
                          ),
                        ),
                        onPressed: () {
                          print("Elevated button");
                        },
                        child: Row(
                          children: [
                            // Image.asset(""),
                            Icon(Icons.image),
                            SizedBox(width: 8),
                            Text(
                              "Button 2",
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.all(10.0),
                child: SizedBox(
                  width: 330,
                  height: 130,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(9),
                      ),
                    ),
                    onPressed: () {
                      print("Elevated button");
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Image.asset(""),
                        Icon(Icons.image),
                        SizedBox(width: 8),
                        Text(
                          "Button 2",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: EdgeInsets.all(10.0),
                    child: SizedBox(
                      width: 150,
                      height: 130,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(9),
                          ),
                        ),
                        onPressed: () {
                          print("Elevated button");
                        },
                        child: Row(
                          children: [
                            // Image.asset(""),
                            Icon(Icons.image),
                            SizedBox(width: 8),
                            Text(
                              "Button 2",
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10.0),
                    child: SizedBox(
                      width: 150,
                      height: 130,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(9),
                          ),
                        ),
                        onPressed: () {
                          print("Elevated button");
                        },
                        child: Row(
                          children: [
                            // Image.asset(""),
                            Icon(Icons.image),
                            SizedBox(width: 8),
                            Text(
                              "Button 2",
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: EdgeInsets.all(10.0),
                    child: SizedBox(
                      width: 150,
                      height: 130,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(9),
                          ),
                        ),
                        onPressed: () {
                          print("Elevated button");
                        },
                        child: Row(
                          children: [
                            // Image.asset(""),
                            Icon(Icons.image),
                            SizedBox(width: 8),
                            Text(
                              "Button 2",
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10.0),
                    child: SizedBox(
                      width: 150,
                      height: 130,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(9),
                          ),
                        ),
                        onPressed: () {
                          print("Elevated button");
                        },
                        child: Row(
                          children: [
                            // Image.asset(""),
                            Icon(Icons.image),
                            SizedBox(width: 8),
                            Text(
                              "Button 2",
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BotBar(),
    );
  }
}
