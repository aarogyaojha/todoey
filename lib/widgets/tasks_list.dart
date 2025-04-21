import 'package:flutter/material.dart';
import 'package:todoey/widgets/tasks_tile.dart';

import '../models/task.dart';

class TasksList extends StatefulWidget {
  const TasksList({super.key, required this.tasks});

  final List<Task> tasks;

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TasksTile(
          isChecked: widget.tasks[index].isDone,
          taskTitle: widget.tasks[index].name,
          checkboxCallback: (bool? checkBoxState) {
            setState(() {
              widget.tasks[index].toggleDone(checkBoxState ?? false);
            });
          },
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}
