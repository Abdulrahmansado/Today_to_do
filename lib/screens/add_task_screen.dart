import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todayto_do/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addtaskcollback;
  AddTaskScreen(this.addtaskcollback);

  @override
  Widget build(BuildContext context) {
    String? newtasktitle;
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Text(
          "Add Task",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.indigo[400],
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        TextField(
          autofocus: true,
          textAlign: TextAlign.center,
          onChanged: (value) {
            newtasktitle = value;
          },
        ),
        SizedBox(
          height: 30,
        ),
        TextButton(
          onPressed: () {
            Provider.of<TaskData>(context, listen: false)
                .addtask(newtasktitle!);
            Navigator.pop(context);
          },
          child: Text(
            "Add",
          ),
          style: TextButton.styleFrom(
            backgroundColor: Colors.teal[400],
            primary: Colors.white,
          ),

          //style: ,
        ),
      ]),
    );
  }
}
