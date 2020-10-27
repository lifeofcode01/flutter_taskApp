import 'package:flutter/material.dart';
import 'package:learn_2gether/pages/todo_app/add_todo/controller/add_todo_ctrl.dart';
import 'package:get/get.dart';
import 'package:learn_2gether/pages/todo_app/display_todo/views/todo_template/todo_template.dart';
import 'package:learn_2gether/pages/todo_app/todo_model.dart';

class TaskList extends StatefulWidget {
  // final logger = Logger();
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  void initState() {
    super.initState();
    print('PrintTaskInListWidget');
  }

  final addTodoCtrl = Get.find<AddTodoCtrl>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddTodoCtrl>(
        builder: (_) => addTodoCtrl?.todoList?.length == 0
            ? Text('No task')
            : ListView.builder(
                shrinkWrap: true,
                itemCount: addTodoCtrl?.todoList?.length,
                itemBuilder: (context, index) {
                  // addTodoCtrl.setTodoModel = addTodoCtrl?.todoList[index];
                  TodoModel todo = addTodoCtrl?.todoList[index];
                  return TodoTemplate(todoModel: todo);

                  // buildListTile(index);
                },
              ));
  }

  ListTile buildListTile(index) {
    print('todo task name: ${addTodoCtrl?.todoList[index]?.taskName}');
    return ListTile(
      title: Text(addTodoCtrl?.todoList[index]?.taskName ?? 'no data in list'),
      subtitle: Text('task detail' ?? 'no'),
    );
  }
}
