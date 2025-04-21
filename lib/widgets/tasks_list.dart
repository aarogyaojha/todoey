import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/tasks_data.dart';
import 'package:todoey/widgets/tasks_tile.dart';

class TasksList extends StatelessWidget {
  const TasksList({super.key});
  @override
  Widget build(BuildContext context) {
    return Consumer<TasksData>(
      builder: (BuildContext context, taskData, Widget? child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TasksTile(
              isChecked: taskData.tasks[index].isDone,
              taskTitle: taskData.tasks[index].name,
              checkboxCallback: (bool? checkBoxState) {
                // setState(() {
                //   Provider.of<TasksData>(
                //     context,
                //   ).tasks[index].toggleDone(checkBoxState ?? false);
                // });
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
