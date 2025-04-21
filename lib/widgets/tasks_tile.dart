import 'package:flutter/material.dart';

class TasksTile extends StatefulWidget {
  const TasksTile({super.key});

  @override
  State<TasksTile> createState() => _TasksTileState();
}

class _TasksTileState extends State<TasksTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "this is a task",
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: TaskCheckBox(
        checkboxState: isChecked,
        toggleCheckboxState: (bool? checkBoxState) {
          setState(() {
            isChecked = checkBoxState ?? false;
          });
        },
      ),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  const TaskCheckBox({
    super.key,
    required this.checkboxState,
    required this.toggleCheckboxState,
  });

  final bool checkboxState;
  final ValueChanged<bool?> toggleCheckboxState;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checkboxState,
      activeColor: Colors.lightBlueAccent,
      onChanged: toggleCheckboxState,
    );
  }
}
