import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {
  const TasksTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(title: Text("this is a task"), trailing: TaskCheckBox());
  }
}

class TaskCheckBox extends StatefulWidget {
  const TaskCheckBox({super.key});

  @override
  State<TaskCheckBox> createState() => _TaskCheckBoxState();
}

class _TaskCheckBoxState extends State<TaskCheckBox> {
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: isChecked,
      activeColor: Colors.lightBlueAccent,
      onChanged: (newValue) {
        setState(() {
          isChecked = newValue;
        });
      },
    );
  }
}
