import 'package:get/get.dart';
import 'package:learn_2gether/pages/task_app/add_task/controller/add_task_ctrl.dart';
import 'package:logger/logger.dart';

import '../../task_model.dart';

class DisplayTaskCtrl extends GetxController {
  Logger logger = Logger();
  List<TaskModel> displayTaskList = [];
  final addTaskCtrl = Get.put<AddTaskCtrl>(AddTaskCtrl());

  bool isLoading = false;
  getTaskFromDb() {
    print('inside getTaskFromDb');
    isLoading = true;
    print('isLoading: $isLoading');
    update();
    logger.d('inside getTaskFromDb');
    Future.delayed(Duration(seconds: 2)).then((_) {
      displayTaskList = addTaskCtrl.taskList;
      isLoading = false;
      print('isLoading: $isLoading');
      update();
    });
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getTaskFromDb();
  }
}
