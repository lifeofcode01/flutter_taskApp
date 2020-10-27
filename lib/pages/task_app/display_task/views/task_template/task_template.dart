import 'package:flutter/material.dart';

class TaskTemplate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        title: Text('task 1'),
        subtitle: Text('task Deatail '),
      ),
    );
  }
}
