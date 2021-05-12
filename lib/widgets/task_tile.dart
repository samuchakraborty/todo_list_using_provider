import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String name;
  final bool isChecked;
  final Function onCheckMethod;

  TaskTile({this.name, this.isChecked, this.onCheckMethod});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(name),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: onCheckMethod,

        // (isDone) {
        //   onCheckMethod(isDone);
        // }
      ),
    );
  }
}
