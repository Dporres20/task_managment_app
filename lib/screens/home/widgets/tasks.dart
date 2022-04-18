import 'dart:js';

import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:my_app/models/task.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:my_app/screens/details/detail.dart';

class Tasks extends StatelessWidget {
  final taskList = Task.generatedTasks();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
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
  return DottedBorder(
    borderType: BorderType.RRect,
    radius: Radius.circular(20),
    dashPattern: [10, 10],
    color: Colors.grey,
    strokeWidth: 2,
    child: Center(
      child: Text('+Add',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
    ),
  );
}

Widget _buildTask(BuildContext context, Task task) {
  return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => DetailPage(task)));
      },
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: task.bgColor, borderRadius: BorderRadius.circular(15)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Icon(
            task.iconData,
            color: task.iconColor,
            size: 35,
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            task.title!,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 15),
        ]),
      ));
}
