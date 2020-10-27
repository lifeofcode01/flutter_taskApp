import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_2gether/pages/todo_app/add_todo/add_todo.dart';

class AddTodoButton extends StatefulWidget {
  @override
  _AddTodoButtonState createState() => _AddTodoButtonState();
}

class _AddTodoButtonState extends State<AddTodoButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        onPressed: () {
          Get.to(AddTodo());
        },
        child: Text(
          "Add Todo",
          style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
