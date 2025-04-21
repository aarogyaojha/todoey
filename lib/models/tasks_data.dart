import 'package:flutter/cupertino.dart';
import 'package:todoey/models/task.dart';

class TasksData extends ChangeNotifier {
  List<Task> tasks = [Task(name: "hello"), Task(name: "go home")];

  int get taskCount {
    return tasks.length;
  }
}
