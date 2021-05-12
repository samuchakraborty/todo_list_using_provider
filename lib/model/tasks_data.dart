import 'package:flutter/foundation.dart';
import 'dart:collection';
import 'package:todo_list/model/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(
      name: 'Buy milk',
    ),
    Task(name: 'Buy sheep'),
    Task(name: 'Buy goat'),
  ];

  int get taskCount => _tasks.length;
  UnmodifiableListView<Task> get tasks => UnmodifiableListView(_tasks);

  void addToTask(String newTaskTitle) {
    var newTaskItem = Task(name: newTaskTitle);
    _tasks.add(newTaskItem);
    notifyListeners();
  }

  void checkbox(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void removeFromTask(Task taskItem) {
   
    _tasks.remove(taskItem);
    notifyListeners();
  }
}
