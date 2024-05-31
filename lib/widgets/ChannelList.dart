import 'package:demo/widgets/Message1.dart';
import 'package:flutter/material.dart';

class ListTileApp extends StatelessWidget {
  const ListTileApp({Key? key}) : super(key: key);

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
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MyWidget(title: 'Lime Туслах')),
                );
              },
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/img/medal.png'),
              ),
              title: Text('Ээж'),
              subtitle: Text("Би:Yu hiij baina eejee."),
              trailing: Text(formattedDate()),
              isThreeLine: true,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MyWidget(title: 'Ээж')),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
