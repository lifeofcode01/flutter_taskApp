import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_2gether/pages/todo_app/todo_model.dart';

class AddTodoCtrl extends GetxController {
  TodoModel _todoModel = TodoModel();
  TodoModel get getTodoModel => _todoModel;

  postTask() {}

  displayTaskInConsole() {
    print(getTodoModel.taskName);
  }
}
