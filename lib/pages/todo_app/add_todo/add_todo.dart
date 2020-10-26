import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/add_todo_ctrl.dart';
import 'views/print_task_widget.dart';
import 'views/task_detail_textfield.dart';
import 'views/task_title_textfield.dart';

class AddTodo extends StatelessWidget {
  final addTodoCtrl = Get.find<AddTodoCtrl>();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Add todo'),
          actions: [
            FlatButton(
              onPressed: () {
                // postTask();
                addTodoCtrl.displayTaskInConsole();
              },
              child: Text('Post', style: TextStyle(color: Colors.white)),
            )
          ],
        ),
        body: ListView(
          children: [
            TaskTitleTextField(),
            TaskDetailTextField(),
            PrintTaskWidget()
          ],
        ),
      ),
    );
  }
}
