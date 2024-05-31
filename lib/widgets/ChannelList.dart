import 'package:flutter/material.dart';

class ListTileApp extends StatelessWidget {
  const ListTileApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: const ListTileExample(),
    );
  }
}

class ListTileExample extends StatelessWidget {
  const ListTileExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String formattedDate() {
      final now = DateTime.now();
      return '${now.year}-${now.month}-${now.day}';
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/img/medal.png'),
              ),
              title: Text('Lime Туслах'),
              subtitle: Text('Сайн байна уу'),
              trailing: Text(formattedDate()),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/img/medal.png'),
              ),
              title: Text('Ээж'),
              subtitle: Text("Би:Yu hiij baina eejee."),
              trailing: Text(formattedDate()),
              isThreeLine: true,
            ),
          ],
        ),
      ),
    );
  }
}
