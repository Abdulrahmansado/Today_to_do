import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todayto_do/models/task_data.dart';
import 'screens/tasks_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false, //mavi çizgileri kaldırır
        home: TasksScreen(),
      ),
    );
  }
}
