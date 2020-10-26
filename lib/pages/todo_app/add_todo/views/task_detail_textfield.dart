import 'package:flutter/material.dart';

class TaskDetailTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: TextField(
      decoration: InputDecoration(hintText: 'Task detail'),
      onChanged: (val) {},
    ));
  }
}
