import 'package:flutter/material.dart';
import 'package:my_app/constants/colors.dart';

class Task {
  IconData? iconData;
  String? title;
  Color? bgColor;
  Color? iconColor;
  Color? btColor;
  // num? left;
  // num? done;
  bool isLast;
  Task(
      {this.iconData,
      this.title,
      this.bgColor,
      this.iconColor,
      this.btColor,
      // this.left,
      // this.done,
      this.isLast = false});
  static List<Task> generatedTasks() {
    return [
      Task(
        iconData: Icons.person_rounded,
        title: "Tasks",
        bgColor: kYellowLight,
        iconColor: kYellowDark,
        btColor: kYellow,
        // left: 3,
        // done: 1,
      ),
      Task(
        iconData: Icons.calendar_month,
        title: "Calendar",
        bgColor: kRedLight,
        iconColor: kRedDark,
        btColor: kRed,
        // left: 0,
        // done: 0,
      ),
      Task(
        iconData: Icons.shop,
        title: "Store",
        bgColor: kBlueLight,
        iconColor: kBlueDark,
        btColor: kBlue,
        // left: 0,
        // done: 0,
      ),
      // Task(
      //   iconData: Icons.spa,
      //   title: "Settings",
      //   bgColor: kBlueLight,
      //   iconColor: kBlueDark,
      //   btColor: kBlue,
      //   left: 0,
      //   done: 0,
      // ),
      // Task(isLast: true),
    ];
  }
}
