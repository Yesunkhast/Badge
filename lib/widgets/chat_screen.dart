import 'package:demo/colors.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(9),
          ),
        ),
        backgroundColor: AppColor.appBarColor,
        actions: <Widget>[
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.more_vert_outlined))
        ],
        title: Text(
          title,
          style: const TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: AppColor.backgroundColor,
    );
  }
}
