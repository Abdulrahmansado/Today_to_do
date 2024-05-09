import 'package:flutter/foundation.dart';
import 'package:todayto_do/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: "go shopping"),
    Task(name: "by a gift "),
    Task(name: "rebait the car"),
  ];

  void addtask(String newtasktitle) {
    tasks.add(
      Task(name: newtasktitle),
    );
    notifyListeners();
  }

  void abdateTask(Task task) {
    task.DoneChange();
    notifyListeners();
  }

  void deleteTask(Task task) {
    tasks.remove(task);
    notifyListeners();
  }
}
