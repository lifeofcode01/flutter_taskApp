import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_2gether/pages/todo_app/todo_model.dart';

import 'controller/add_todo_ctrl.dart';
import 'views/print_task_widget.dart';
import 'views/task_detail_textfield.dart';
import 'views/task_title_textfield.dart';
import 'views/task_list.dart';
import 'package:learn_2gether/pages/todo_app/display_todo/display_todo.dart';

class AddTodo extends StatefulWidget {
  @override
  _AddTodoState createState() => _AddTodoState();
}

class _AddTodoState extends State<AddTodo> {
  final addTodoCtrl = Get.find<AddTodoCtrl>();

  @override
  void initState() {
    super.initState();
    print('inside add todo page');
    addTodoCtrl.displayTaskInConsole();
  }

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
                addTodoCtrl.addTaskInList();
                // addTodoCtrl.displayTaskInConsole();

                // addTodoCtrl.todoList.add(addTodoCtrl.getTodoModel);

                // Get.to(DisplayTodo());
              },
              child: Text('Post', style: TextStyle(color: Colors.white)),
            )
          ],
        ),
        body: ListView(
          children: [
            TaskTitleTextField(),
            TaskDetailTextField(),
            TaskList(),
            // PrintTaskWidget()
            // PrintTaskInListWidget()
          ],
        ),
      ),
    );
  }
}
