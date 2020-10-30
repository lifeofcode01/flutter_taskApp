import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_2gether/pages/task_app/add_task/add_task.dart';

class AddTaskButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        child: Text('Add Task'),
        onPressed: () {
          Get.to(AddTask());
        },
      ),
    );
  }
}
