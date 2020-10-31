// To parse this JSON data, do
//
//     final taskModel = taskModelFromJson(jsonString);

import 'dart:convert';

TaskModel taskModelFromJson(String str) => TaskModel.fromJson(json.decode(str));

String taskModelToJson(TaskModel data) => json.encode(data.toJson());

class TaskModel {
    TaskModel({
        this.taskName,
        this.taskDetail,
    });

    String taskName;
    String taskDetail;

    factory TaskModel.fromJson(Map<String, dynamic> json) => TaskModel(
        taskName: json["taskName"],
        taskDetail: json["taskDetail"],
    );

    Map<String, dynamic> toJson() => {
        "taskName": taskName,
        "taskDetail": taskDetail,
    };
}
