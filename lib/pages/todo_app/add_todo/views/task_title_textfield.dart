import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_2gether/pages/todo_app/add_todo/controller/add_todo_ctrl.dart';
import 'package:learn_2gether/pages/todo_app/display_todo/display_todo.dart';
import 'package:learn_2gether/pages/todo_app/todo_model.dart';

class TaskTitleTextField extends StatelessWidget {
  final addTodoCtrl = Get.find<AddTodoCtrl>();
  // TextEditingController titleCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: TextField(
            controller: addTodoCtrl.titleCtrl,
            decoration: InputDecoration(hintText: "Task Name"),
            // onChanged: (val)
            // },
          ),
        ),
        // FlatButton(
        //   onPressed: () {
        //     // postTask();
        //     // addTodoCtrl.todoList
        //     //     .add(TodoModel(taskName: addTodoCtrl.titleCtrl.text));

        //     addTodoCtrl.addTaskInList();
        //     // addTodoCtrl.displayTaskInConsole();

        //     // addTodoCtrl.todoList.add(addTodoCtrl.getTodoModel);

        //     Get.to(DisplayTodo());
        //   },
        //   child: Text('Post', style: TextStyle(color: Colors.blue)),
        // )
      ],
    );
  }
}
