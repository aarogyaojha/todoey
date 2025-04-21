import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {
  const TasksTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("this is a task"),
      trailing: Checkbox(value: false, onChanged: (value) {}),
    );
  }
}
