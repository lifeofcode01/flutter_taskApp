import 'package:flutter/material.dart';

import '../../../task_model.dart';

class TaskTemplate extends StatelessWidget {
  final TaskModel taskModel;
  TaskTemplate({this.taskModel});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        title: Text(taskModel?.taskTitle ?? "no task name"),
        subtitle: Text(taskModel?.taskDescription ?? 'task Detail '),
      ),
    );
  }
}
