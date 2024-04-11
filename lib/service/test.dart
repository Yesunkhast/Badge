
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class UpdateData extends StatefulWidget {
  @override
  _UpdateDataState createState() => _UpdateDataState();
}

class _UpdateDataState extends State<UpdateData> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Function to update data in Firestore
  Future<void> updateData() async {
    try {
      await _firestore.collection('Badges').doc(1.toString()).update({
        'isShowed': false,
      });
      // var doc_id = _firestore.collection('Badges');
      print('Data updated successfully');
    } catch (e) {
      print('Error updating data: ${e.toString()}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Firestore Update Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: updateData,
          child: Text('Update Data'),
        ),
      ),
    );
  }
}
