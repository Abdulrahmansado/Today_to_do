//import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:todayto_do/models/task_data.dart';
import 'package:todayto_do/screens/add_task_screen.dart';
import '../models/task.dart';
import '../widgets/tasks_list.dart';
import 'package:provider/provider.dart';

// ignore_for_file: prefer_const_constructors,
//prefer_interpolation_to_compose_strings, avoid_print
class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) => SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: AddTaskScreen((newtasktitle) {
                  // setState(() {
                  //   Provider.of<TaskData>(context).tasks.add(
                  //     Task(name: newtasktitle),
                  //   );
                  //   Navigator.pop(context);
                }),
              ),
            ),
          );
        },
        backgroundColor: Colors.indigo[400],
        child: Icon(Icons.add),
      ),
      backgroundColor: Colors.teal[400],
      body: Container(
        //color: Colors.grey,
        padding: const EdgeInsets.only(
          top: 60,
          left: 20,
          right: 20,
          bottom: 80,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.playlist_add_check,
                  size: 40,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "ToDayDo_APP",
                  style: TextStyle(color: Colors.white, fontSize: 40),
                ),
              ],
            ),
            Text(
              '${Provider.of<TaskData>(context).tasks.length} Tasks',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                //height: 300,
                decoration: BoxDecoration(
                  // color: Colors.white,
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: TasksList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
