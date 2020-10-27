import 'package:get/get.dart';

import '../../todo_model.dart';

class DisplayTodoCtrl extends GetxController {
  TodoModel todoModel = TodoModel();

  increasePriority(TodoModel todoModel) {
    if (todoModel.taskPriority == null) {
      todoModel.taskPriority = 0;
    }

    todoModel.taskPriority += 1;
    update();
  }
}
