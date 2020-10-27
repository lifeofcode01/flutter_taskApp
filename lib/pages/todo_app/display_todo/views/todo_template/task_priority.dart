import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_2gether/pages/todo_app/add_todo/controller/add_todo_ctrl.dart';
import 'package:learn_2gether/pages/todo_app/display_todo/controller/display_todo_ctrl.dart';

import '../../../todo_model.dart';

class TaskPriority extends StatelessWidget {
  // TodoModel todoModel;
  // TaskPriority({this.todoModel});
  // final displayTodoCtrl = Get.find<DisplayTodoCtrl>();
  final addTodoCtrl = Get.find<AddTodoCtrl>();

  // TodoModel todoModel = displayTodoCtrl.todoModel;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        DisplayPriorityText(),
        RaisedButton(
            child: Text('increase priority'),
            onPressed: () {
              addTodoCtrl?.increasePriority(
                  addTodoCtrl?.todoList[addTodoCtrl.taskIndex]);
            })
      ],
    ));
  }
}

class DisplayPriorityText extends StatelessWidget {
  // DisplayPriorityText({
  //   Key key,
  //   @required this.todoModel,
  // }) : super(key: key);

  // final TodoModel todoModel;
  final todoModel2 = Get.find<AddTodoCtrl>().getTodoModel;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddTodoCtrl>(
      builder: (_) => Text(todoModel2.taskPriority.toString() ?? '0 priority'),
    );
  }
}
