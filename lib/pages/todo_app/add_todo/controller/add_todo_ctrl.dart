import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_2gether/pages/todo_app/todo_model.dart';

class AddTodoCtrl extends GetxController {
  int taskIndex;
  TodoModel _todoModel = TodoModel();
  List<TodoModel> todoList = [];
  // List<TodoModel> get getTodoList = _todoList;
  TodoModel get getTodoModel => _todoModel;
  set setTodoModel(TodoModel todoModel) => _todoModel = todoModel;

  TextEditingController titleCtrl = TextEditingController();

  TextEditingController detailCtrl = TextEditingController();
  postTask() {}

  displayTaskInConsole() {
    todoList.forEach((element) {
      print('todo item: ${element.taskName}');
    });
  }

  increasePriority(TodoModel todoModel) {
    print('inside increasePriority');
    if (_todoModel.taskPriority == null) {
      print('task priority : null');
      _todoModel.taskPriority = 0;
    }
    print('task priority: ${_todoModel.taskPriority}');

    _todoModel.taskPriority += 1;
    update();
  }

  addTaskInList() {
    TodoModel todoModel = TodoModel(
      taskName: titleCtrl.text,
      taskDetail: detailCtrl.text,
    );

    todoList.add(todoModel);

    // _todoModel.taskName = titleCtrl.text;
    // todoList.add(_todoModel);
    displayTaskInConsole();
    titleCtrl.clear();
    detailCtrl.clear();

    update();
    // return todoList;
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    // displayTodoList();
  }
}
