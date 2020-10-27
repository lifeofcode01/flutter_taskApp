import 'package:flutter/material.dart';
import 'package:learn_2gether/pages/todo_app/add_todo/views/task_list.dart';

import 'views/add_task_button.dart';
import 'views/tasks_list.dart';

class DisplayTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          AddTaskButton(),
          TasksList(),
        ],
      ),
    );
  }
}
