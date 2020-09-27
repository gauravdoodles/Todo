import 'package:flutter/foundation.dart';
import 'models.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: "UninstallAndroidstudio"),
    Task(name: "Use Vscode"),
    Task(name: "remove google from android"),
  ];

  int get taskcount {
    return _tasks.length;
  }

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void addTask(String newtasktitle) {
    final task = Task(name: newtasktitle);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
