import 'package:get/get.dart';
import 'package:learn_2gether/pages/todo_app/add_todo/controller/add_todo_ctrl.dart';
import 'package:learn_2gether/pages/todo_app/display_todo/controller/display_todo_ctrl.dart';

class CtrlBinding extends Bindings {
  @override
  void dependencies() {
    //implement dependencies
    Get.lazyPut(() => AddTodoCtrl());
    Get.lazyPut(() => DisplayTodoCtrl());
  }
}
