import 'Contact.dart';
import 'HomeItems.dart';
import 'Keypad.dart';
import 'Message.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 230, 228, 228),
      body: <Widget>[
        const HomeItems(),
        Contact(),
        const PhoneKeypad(),
        Message(),
      ][currentPageIndex],
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        // indicatorColor: Colors.amber,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Нүүр',
          ),
          NavigationDestination(
              icon: Icon(Icons.access_time_outlined), label: 'Түүх'),
          NavigationDestination(icon: Icon(Icons.phone), label: 'Дуудлага'),
          NavigationDestination(
              icon: Icon(Icons.message_outlined), label: 'Мессеж'),
        ],
      ),
    );
  }
}
