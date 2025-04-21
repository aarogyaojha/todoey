import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:todoey/models/task.dart';

class TasksData extends ChangeNotifier {
  List<Task> _tasks = [Task(name: "hello"), Task(name: "go home")];

  int get taskCount {
    return _tasks.length;
  }

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void addTask(String newTaskTitle) {
    _tasks.add(Task(name: newTaskTitle));
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }
}
