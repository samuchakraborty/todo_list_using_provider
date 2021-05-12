import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String name;
  final bool isChecked;
  final Function onCheckMethod;
final Function longPressCallBack;
  TaskTile({this.name, this.isChecked, this.onCheckMethod, this.longPressCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallBack,
      title: Text(
        name,
        style: TextStyle(
            fontSize: 18,
            decoration:
                isChecked ? TextDecoration.lineThrough : TextDecoration.none),
      ),
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
