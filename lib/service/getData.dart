import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class MyApp extends StatelessWidget {
  Future<List<int>> fetchData() async {
    List<int> dataArray = [];
    QuerySnapshot<Map<String, dynamic>> querySnapshot =
        await FirebaseFirestore.instance.collection('User').get();
    for (var doc in querySnapshot.docs) {
      dataArray.addAll(List<int>.from(doc.data()['owned']));
    }
    return dataArray;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Firebase Array Example'),
        ),
        body: FutureBuilder(
          future: fetchData(),
          builder: (context, AsyncSnapshot<List<int>> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.hasError) {
              return Center(
                child: Text('Error: ${snapshot.error}'),
              );
            } else {
              return ListView.builder(
                itemCount: snapshot.data?.length,
                itemBuilder: (context, index) {
                  return Text("${snapshot.data![index]}");
                },
              );
            }
          },
        ),
      ),
    );
  }
}
