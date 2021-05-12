import 'package:flutter/material.dart';
import 'package:todo_list/model/task.dart';
import 'package:todo_list/widgets/task_tile.dart';

class TaskList extends StatefulWidget {
  final List<Task> tasks;

  TaskList({this.tasks});

  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: widget.tasks.length,
        physics: AlwaysScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return TaskTile(
            name: widget.tasks[index].name,
            isChecked: widget.tasks[index].isDone,
            onCheckMethod: (check) {
              setState(() {
                print('is clicked');
                widget.tasks[index].toggleDone();
              });
            },
          );
        });
  }
}
