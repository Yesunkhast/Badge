import 'package:demo/User/userHome.dart';
import 'package:flutter/material.dart';

class ContainerAppBar extends StatelessWidget implements PreferredSizeWidget {
  ContainerAppBar({required Key key})
      : preferredSize = Size.fromHeight(56),
        super(key: key);

  @override
  final Size preferredSize; // default is 56.0

  @override
  Widget build(BuildContext context) {
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
      title: Text("Өглөөний мэнд",
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
