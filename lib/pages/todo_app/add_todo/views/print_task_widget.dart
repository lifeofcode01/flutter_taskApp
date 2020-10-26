import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_2gether/pages/todo_app/add_todo/controller/add_todo_ctrl.dart';

class PrintTaskWidget extends StatelessWidget {
  final addTodoCtrl = Get.find<AddTodoCtrl>();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GetBuilder(
        builder: (_) {
          return Text(addTodoCtrl.getTodoModel.taskName ?? "No data");
        },
      ),
    );
  }
}
