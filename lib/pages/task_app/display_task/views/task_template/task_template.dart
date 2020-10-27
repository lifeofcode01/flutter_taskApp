import 'package:flutter/material.dart';

class TaskTemplate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        title: Text('Task 1'),
        subtitle: Text('Detail 1'),
      ),
    );
  }
}
