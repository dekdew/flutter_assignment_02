import 'package:flutter/material.dart';
import '../sqflite/database.dart';

class Task extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TaskState();
  }
}

class _TaskState extends State<Task> {
  final TodoProvider _provider = TodoProvider();
  List<Todo> _taskList = List<Todo>();

  @override
  Widget build(BuildContext context) {
    return Center(
      
    );
  }
}
