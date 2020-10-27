import 'package:flutter/material.dart';

import 'task_template/task_template.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
      shrinkWrap: true,
      itemCount: 5,
      itemBuilder: (context, index) {
        return
            // Text('Task $index');
            TaskTemplate();
      },
    ));
  }
}
