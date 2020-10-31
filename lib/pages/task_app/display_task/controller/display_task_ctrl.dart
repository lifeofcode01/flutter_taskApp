import 'dart:convert';

import 'package:get/get.dart';
import 'package:learn_2gether/pages/task_app/add_task/controller/add_task_ctrl.dart';
import 'package:logger/logger.dart';

import '../../task_model.dart';
import 'package:http/http.dart' as http;

class DisplayTaskCtrl extends GetxController {
  Logger logger = Logger();
  List<TaskModel> displayTaskList = [];
  final addTaskCtrl = Get.put<AddTaskCtrl>(AddTaskCtrl());

  bool isLoading = false;
  getTaskFromDb() {
    logger.d('inside getTaskFromDb');

    isLoading = true;
    print('isLoading: $isLoading');
    update();
    gettingTaskFromDb().then((_) {
      isLoading = false;
      print('isLoading: $isLoading');
      update();
    });
  }

  Future gettingTaskFromDb() async {
    logger.d('inside gettingTaskFromDb()');
    var url = "http://www.json-generator.com/api/json/get/cgCyOsHjiq?indent=2";

    var response = await http.get(url);
    if (response.statusCode == 200) {
      //everthing ok
      print('response.status : 200');
      print('response.body : ${response.body}');

      var taskJson = json.decode(response.body);
      for (var json in taskJson) {
        TaskModel task = TaskModel.fromJson(json);
        displayTaskList.add(task);
      }
    } else {
      print('something wrong');
    }
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getTaskFromDb();
  }
}
