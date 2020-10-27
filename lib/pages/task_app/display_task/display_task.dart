import 'package:flutter/material.dart';

import 'views/add_task_button.dart';
import 'views/task_list.dart';

class DisplayTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        AddTaskButton(),
        TaskList(),
      ],
    ));
  }
}
