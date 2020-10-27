class TodoModel {
  String taskName;
  String taskDetail;
  int taskPriority = 0;

  TodoModel({this.taskName, this.taskDetail, this.taskPriority});

  factory TodoModel.fromJson(Map<String, dynamic> taskJson) {
    return TodoModel(
        taskName: taskJson['taskName'],
        taskDetail: taskJson['taskDetail'],
        taskPriority: taskJson['taskPriority']);
  }

  Map<String, dynamic> toJson() {
    return {'taskName': taskName, 'taskDetail': taskDetail};
  }
}
