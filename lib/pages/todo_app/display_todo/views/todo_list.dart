import 'package:flutter/material.dart';

import 'todo_template.dart';

class TodoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return TodoTemplate();
      },
    );
  }
}
