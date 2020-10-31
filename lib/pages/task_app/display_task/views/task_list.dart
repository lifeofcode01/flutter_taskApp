import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_2gether/pages/task_app/add_task/controller/add_task_ctrl.dart';
import 'package:learn_2gether/pages/task_app/display_task/controller/display_task_ctrl.dart';

import '../../task_model.dart';
import 'task_template/task_template.dart';

class TaskList extends StatelessWidget {
  final displayTaskCtrl = Get.find<DisplayTaskCtrl>();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DisplayTaskCtrl>(
      builder: (_) => displayTaskCtrl.isLoading
          ? Center(child: CircularProgressIndicator())
          : displayTaskCtrl.displayTaskList.length == 0
              ? Center(child: Text('No Task'))
              : Container(
                  child: ListView.builder(
                  // physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: displayTaskCtrl.displayTaskList.length,
                  itemBuilder: (context, index) {
                    TaskModel task = displayTaskCtrl.displayTaskList[index];

                    // TaskModel task = displayTaskCtrl.taskList[index];

                    return
                        // Text('Task $index');
                        TaskTemplate(taskModel: task);
                  },
                )),
    );
  }
}
