import 'package:flutter/material.dart';

import 'views/add_todo_button.dart';
import 'views/todo_list.dart';
import 'package:learn_2gether/pages/todo_app/add_todo/views/task_list.dart';
import 'package:learn_2gether/pages/todo_app/add_todo/controller/add_todo_ctrl.dart';
import 'package:get/get.dart';
import 'package:learn_2gether/pages/todo_app/todo_model.dart';

class DisplayTodo extends StatefulWidget {
  @override
  _DisplayTodoState createState() => _DisplayTodoState();
}

class _DisplayTodoState extends State<DisplayTodo> {
  final addTodoCtrl = Get.find<AddTodoCtrl>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [AddTodoButton(), TaskList()],
      ),
    );
  }
}
