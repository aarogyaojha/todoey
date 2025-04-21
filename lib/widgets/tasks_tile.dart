import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {
  const TasksTile({
    super.key,
    required this.isChecked,
    required this.taskTitle,
    required this.checkboxCallback,
    required this.longPressCallback,
  });
  final bool isChecked;
  final String taskTitle;
  // final bool checkboxState;
  final ValueChanged<bool?> checkboxCallback;
  final GestureLongPressCallback? longPressCallback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.lightBlueAccent,
        // onChanged: toggleCheckboxState,
        onChanged: checkboxCallback,
      ),
    );
  }
}
