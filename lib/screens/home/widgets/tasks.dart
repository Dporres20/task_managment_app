import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:my_app/models/task.dart';

class Tasks extends StatelessWidget {
  final taskList = Task.generatedTasks();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
          itemCount: taskList.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
          itemBuilder: (context, index) => taskList[index].isLast
              ? _buildAddTask()
              : _buildTask(context, taskList[index])),
    );
  }
}

Widget _buildAddTask() {
  return const Text("Add Task");
}

Widget _buildTask(BuildContext, Task task) {
  return Container(
    padding: const EdgeInsets.all(15),
    decoration: BoxDecoration(
        color: task.bgColor, borderRadius: BorderRadius.circular(15)),
  );
}
