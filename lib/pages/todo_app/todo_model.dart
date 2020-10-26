class TodoModel {
  String taskName;
  String taskDetail;

  TodoModel({this.taskName, this.taskDetail});

  factory TodoModel.fromJson(Map<String, dynamic> taskJson) {
    return TodoModel(
        taskName: taskJson['taskName'], taskDetail: taskJson['taskDetail']);
  }

  Map<String, dynamic> toJson() {
    return {'taskName': taskName, 'taskDetail': taskDetail};
  }
}
