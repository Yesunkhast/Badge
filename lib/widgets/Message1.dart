import 'package:demo/service/getData.dart';
import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  final String title;

  const MyWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text(' $title -рүү мессеж бичих'),
      ),
    );
  }
}
