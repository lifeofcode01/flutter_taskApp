import 'package:flutter/material.dart';

import 'views/add_todo_button.dart';
import 'views/todo_list.dart';

class DisplayTodo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        AddTodoButton(),
        TodoList(),
      ],
    ));
  }
}
