import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_2gether/pages/task_app/add_task/controller/add_task_ctrl.dart';

class TaskDetailTextField extends StatelessWidget {
  final addTaskCtrl = Get.find<AddTaskCtrl>();

  @override
  Widget build(BuildContext context) {
    return Container(
        child: TextField(
      controller: addTaskCtrl.descriptionCtrl,
      decoration: InputDecoration(hintText: "Task detail"),
    ));
  }
}
