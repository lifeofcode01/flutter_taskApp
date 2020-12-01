// To parse this JSON data, do
//
//     final taskModel = taskModelFromJson(jsonString);

import 'dart:convert';

class TaskModel {
    TaskModel({
        this.taskTitle,
        this.taskDescription,
    });

    String taskTitle;
    String taskDescription;

    factory TaskModel.fromRawJson(String str) => TaskModel.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory TaskModel.fromJson(Map<String, dynamic> json) => TaskModel(
        taskTitle: json["taskTitle"],
        taskDescription: json["taskDescription"],
    );

    Map<String, dynamic> toJson() => {
        "taskTitle": taskTitle,
        "taskDescription": taskDescription,
    };
}
