import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/model/tasks_data.dart';
import 'package:todo_list/widgets/task_tile.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
            shrinkWrap: true,
            itemCount: taskData.taskCount,
            physics: AlwaysScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              var task = taskData.tasks[index];
              return TaskTile(
                name: task.name,
                isChecked: task.isDone,
                onCheckMethod: (checkbox) {
                  taskData.checkbox(task);
                },
                longPressCallBack: () {
                  taskData.removeFromTask(task);
                },
              );
            });
      },
    );
  }
}
