import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todayto_do/widgets/task_list.dart';

import '../models/task.dart';
import '../models/task_data.dart';

class TasksList extends StatelessWidget {
  // final List<Task> tasks;
  // TasksList(this.tasks);
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, TaskData, child) {
        return ListView.builder(
            itemCount: TaskData.tasks.length,
            itemBuilder: ((context, index) {
              return ListTitle(
                ischecked: TaskData.tasks[index].isDone,
                TaskTitle: TaskData.tasks[index].name,
                Checkboxchange: ((newvalue) {
                  TaskData.abdateTask(TaskData.tasks[index]);
                }),
                listtitledelete: () {
                  TaskData.deleteTask(TaskData.tasks[index]);
                },
              );
            }));
      },
    );
  }
}
// ListView(
//       children: [
//         ListTitle(
//           TaskTitle: tasks[0].name,
//           ischecked: tasks[0].isDone,
//         ),
//         ListTitle(
//           TaskTitle: tasks[1].name,
//           ischecked: tasks[1].isDone,
//         ),
//         ListTitle(
//           TaskTitle: tasks[2].name,
//           ischecked: tasks[2].isDone,
//         ),
//       ],
//     );