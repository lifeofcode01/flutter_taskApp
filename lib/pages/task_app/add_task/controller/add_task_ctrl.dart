import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_2gether/pages/task_app/task_model.dart';

class AddTaskCtrl extends GetxController {
  TextEditingController taskNameCtrl = TextEditingController();
  List<TaskModel> taskList = List();

  // void postDataToDb() {
  // TaskModel taskModel = TaskModel(
  //   taskName: taskNameCtrl.text,
  //   // taskDetail: taskDetailCtrl
  // );

  // taskList.add(taskModel);
  // }

  void addTaskInList() {
    TaskModel taskModel = TaskModel(
      // taskName: addTaskCtrl?.taskNameCtrl?.text,
      taskName: taskNameCtrl?.text,
    );
    // print('taskname: ${addTaskCtrl?.taskNameCtrl?.text} ');

    taskList.add(taskModel);
    taskList.forEach((task) {
      print('${task.taskName}');
    });

    update();
    // addTaskCtrl.taskList.add(taskModel);
  }

  bool isUploading = false;

  void postTaskToDb() {
    print('inside postTaskToDb()');
    isUploading = true;
    update();
    print('isUploading: $isUploading');
    postingTaskToDb();
  }

  void postingTaskToDb() {
    print('inside postingTaskToDb');
    TaskModel taskModel = TaskModel(
      // taskName: addTaskCtrl?.taskNameCtrl?.text,
      taskName: taskNameCtrl?.text,
    );
    Future.delayed(Duration(seconds: 2)).then((_) {
      taskList.add(taskModel);
      taskList.forEach((task) {
        print('${task.taskName}');
      });

      isUploading = false;
      update();
      print('isUploading: $isUploading');
      resetUi();
      
    });
  }

  resetUi() {
    taskNameCtrl.text = '';
  }
}
