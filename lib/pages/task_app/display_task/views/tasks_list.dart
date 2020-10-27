import 'package:flutter/material.dart';
import 'package:learn_2gether/pages/task_app/display_task/views/task_template/task_template.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
      shrinkWrap: true,
      itemCount: 5,
      itemBuilder: (context, index) {
        return TaskTemplate();
      },
    ));
  }
}
