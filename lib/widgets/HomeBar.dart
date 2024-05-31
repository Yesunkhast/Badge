// import 'package:cloud_firestore/cloud_firestore.dart';

import '../User/userHome.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ContainerAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  // late final int counter;
  final Size preferredSize = const Size.fromHeight(56);
  final List<String> _time = ["Өглөөний", "Өдрийн", "Оройн"];

  // final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  // Future<int> Counter() async {
  //   try {
  //     counter = _firestore
  //         .collection("Badges")
  //         .where("isShowed", isEqualTo: true)
  //         .count()
  //         .get() as int;
  //     print('Data readed successfully');
  //   } catch (e) {
  //     print('Error reading data: ${e.toString()}');
  //   }
  //   return counter;
  // }

  @override
  Widget build(BuildContext context) {
    String time;
    DateTime date = DateTime.now();
    int hour = date.hour;
    if (hour > 6 && hour < 12) {
      time = _time[0];
    } else if (hour > 12 && hour < 18) {
      time = _time[1];
    } else {
      time = _time[2];
    }

    return AppBar(
      backgroundColor: const Color(0xff17181c),
      elevation: 0.0,
      leading: IconButton(
        color: Colors.grey,
        iconSize: 40.0,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const UserHome()),
          );
        },
        icon: const Icon(Icons.supervised_user_circle),
      ),
      title: Text("$time мэнд",
          style: const TextStyle(color: Colors.white, fontSize: 15)),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.notifications_active_rounded),
        ),
      ],
    );
  }
}
