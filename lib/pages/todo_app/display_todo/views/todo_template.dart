import 'package:flutter/material.dart';

class TodoTemplate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListTile(
      title: Text('Task 1'),
      subtitle: Text('task 1 detail'),
    ));
  }
}
