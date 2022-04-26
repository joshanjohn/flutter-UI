import 'package:flutter/material.dart';
import 'package:task_app/constants/colors.dart';
import 'package:task_app/screens/home/widgets/tasks.dart';

class Task {
  IconData? iconData;
  String? title;
  Color? bgColor;
  Color? iconColor;
  Color? btnColor;
  num? left;
  num? done;
  List<Map<String, dynamic>>? desc;
  bool isLast;

  Task({
    this.iconData,
    this.title,
    this.bgColor,
    this.iconColor,
    this.btnColor,
    this.left,
    this.done,
    this.desc,
    this.isLast = false,
  });
  static List<Task> generateTasks() {
    return [
      Task(
          iconData: Icons.person_rounded,
          title: 'Personal',
          bgColor: kYellowLight,
          iconColor: kYellowDark,
          btnColor: kYellow,
          left: 3,
          done: 1,
          desc: [
            {
              'time': '9:00 am',
              'title': 'Go for walk with Dog',
              'slot': '9:00 - 10:00 am',
              'tlColor': kRedDark,
              'bgcolor': kRedLight,
            },
            {
              'time': '10:00 am',
              'title': 'Flight to Goa',
              'slot': '10:00 - 12:00 am',
              'tlColor': kBlueDark,
              'bgcolor': kBlueLight,
            },
            {
              'time': '11:00 am',
              'title': '',
              'slot': '',
              'tlColor': kBlueDark,
            },
            {
              'time': '12:00 am',
              'title': '',
              'slot': '',
              'tlColor': Colors.grey.withOpacity(0.3),
            },
            {
              'time': '1:00 pm',
              'title': 'Meet with clint Parker',
              'slot': '',
              'tlColor': kYellowDark,
              'bgcolor': kYellowLight
            },
            {
              'time': '2:00 am',
              'title': '',
              'slot': '',
              'tlColor': Colors.grey.withOpacity(0.3),
            },
            {
              'time': '3:00 am',
              'title': '',
              'slot': '',
              'tlColor': Colors.grey.withOpacity(0.3),
            },
            {
              'time': '4:00 am',
              'title': 'visit Wakanda Beach',
              'slot': '4:00 - 5:00 am',
              'tlColor': kBlueDark,
              'bgcolor': kBlueLight,
            },
          ]),
      Task(
        iconData: Icons.cases_rounded,
        title: 'Work',
        bgColor: kRedLight,
        iconColor: kRedDark,
        btnColor: kRed,
        left: 0,
        done: 0,
      ),
      Task(
        iconData: Icons.favorite_rounded,
        title: 'Health',
        bgColor: kBlueLight,
        iconColor: kBlueDark,
        btnColor: kBlue,
        left: 0,
        done: 0,
      ),
      Task(
        isLast: true,
      ),
    ];
  }
}
