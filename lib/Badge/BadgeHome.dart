import 'package:demo/User/userBar.dart';
import 'package:flutter/material.dart';

class BadgeHome extends StatelessWidget {
  const BadgeHome({super.key});

  @override
  Widget build(BuildContext context) {
    const String title = "Bagde's";
    const List<String> _BadgeType = ["Type1", "Type2", "Type3", "Type4"];
    return Scaffold(
      appBar: UserBar(ner: title),
      body: Column(
        children: [
          Container(),
          Container(),
          Container(),
          Container(),
        ],
      ),
    );
  }
}
