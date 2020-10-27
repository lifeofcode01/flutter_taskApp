import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_2gether/pages/todo_app/add_todo/controller/add_todo_ctrl.dart';
import 'package:learn_2gether/pages/todo_app/display_todo/views/todo_template/task_priority.dart';

import '../../../todo_model.dart';

class TodoTemplate extends StatelessWidget {
  final TodoModel todoModel;
  TodoTemplate({this.todoModel});

  // final todoModel = Get.find<AddTodoCtrl>().getTodoModel;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [buildListTile(), TaskPriority(todoModel: todoModel)],
    ));
  }

  ListTile buildListTile() {
    return ListTile(
      title: Text(todoModel?.taskName ?? 'no task '),
      subtitle: Text(todoModel?.taskDetail ?? ' no detail'),
    );
  }
}
