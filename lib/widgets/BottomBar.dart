import 'package:flutter/material.dart';

class BotBar extends StatefulWidget {
  @override
  State<BotBar> createState() => _BotBarState();
}

class _BotBarState extends State<BotBar> {
  @override
  Widget build(BuildContext context) {
    var _currentPageIndex = 0;
    return NavigationBar(
      destinations: [
        NavigationDestination(
          icon: Icon(Icons.home),
          label: 'Нүүр',
        ),
        NavigationDestination(icon: Icon(Icons.phone), label: 'Дуудлага'),
        NavigationDestination(
            icon: Icon(Icons.message_outlined), label: 'Мессеж'),
        NavigationDestination(
            icon: Icon(Icons.supervised_user_circle_outlined), label: 'Хүмүүс')
      ],
      selectedIndex: _currentPageIndex,
      onDestinationSelected: (int index) {
        setState(() {
          _currentPageIndex = index;
        });
      },
    );
  }
}
