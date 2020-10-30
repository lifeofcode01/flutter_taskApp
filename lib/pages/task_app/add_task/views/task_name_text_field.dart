import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_2gether/pages/task_app/add_task/controller/add_task_ctrl.dart';

class TaskNameTextField extends StatelessWidget {
  final addTaskCtrl = Get.find<AddTaskCtrl>();
  // TextEditingController taskNameCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
          controller: addTaskCtrl.taskNameCtrl,
          // controller: taskNameCtrl,
          decoration: InputDecoration(
            hintText: "Task name"
          ),

          ),
    );
  }
}
