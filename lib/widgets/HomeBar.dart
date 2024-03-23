import '../User/userHome.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ContainerAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize = Size.fromHeight(56);
  List<String> _time = ["Өглөөний", "Өдрийн", "Оройн"];

  @override
  Widget build(BuildContext context) {
    String time;
    // 2024-03-09 17:54:14.14.635
    // DateTime date = DateTime.parse("2024-03-09 07:54:14.635");
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
      backgroundColor: Color(0xff17181c),
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
        icon: Icon(Icons.supervised_user_circle),
      ),
      title: Text("${time} мэнд",
          style: TextStyle(color: Colors.white, fontSize: 15)),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.notifications_active_rounded),
        ),
      ],
    );
  }
}
