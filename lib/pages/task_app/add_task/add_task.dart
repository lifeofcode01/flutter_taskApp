import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_2gether/pages/task_app/add_task/controller/add_task_ctrl.dart';
import 'package:learn_2gether/pages/task_app/display_task/controller/display_task_ctrl.dart';

import '../task_model.dart';
import 'views/task_detail_text_field.dart';
import 'views/task_name_text_field.dart';

class AddTask extends StatelessWidget {
  final addTaskCtrl = Get.put<AddTaskCtrl>(AddTaskCtrl());
  final displayTaskCtrl = Get.put<DisplayTaskCtrl>(DisplayTaskCtrl());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAddTaskAppBar(),
        body: GetBuilder<AddTaskCtrl>(
            builder: (_) => addTaskCtrl.isUploading
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : ListView(
                    children: [
                      TaskNameTextField(),
                      TaskDetailTextField(),
                    ],
                  )));
  }

  AppBar buildAddTaskAppBar() {
    return AppBar(
      title: Text('Add Task'),
      actions: [
        FlatButton(
            onPressed: () {
              // addTaskCtrl.addTaskInList();

              addTaskCtrl.postTaskToMongoDB();
              // addTaskCtrl.postTaskToDb();
              displayTaskCtrl.getTaskFromDb();
            },
            child: Text(
              'Post',
            ))
      ],
    );
  }
}
