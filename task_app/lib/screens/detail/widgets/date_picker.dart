import 'dart:ui';

import 'package:flutter/material.dart';

class DatePicker extends StatefulWidget {
  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  final weekList = ['sun', 'mon', 'tue', 'wed', 'thus', 'fri', 'sat'];
  final dayList = ['24', '25', '26', '27', '28', '29', '30', '31'];
  var selected = 4;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5),
      margin: EdgeInsets.symmetric(horizontal: 5),
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  return setState(() {
                    selected = index;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    color:
                        selected == index ? Colors.grey.withOpacity(0.2) : null,
                  ),
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.symmetric(horizontal: 4),
                  child: Column(
                    children: [
                      Text(
                        weekList[index],
                        style: TextStyle(
                          color: selected == index ? Colors.black : Colors.grey,
                          fontWeight: selected == index
                              ? FontWeight.bold
                              : FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        '${dayList[index]}',
                        style: TextStyle(
                          color: selected == index ? Colors.black : Colors.grey,
                          fontWeight: selected == index
                              ? FontWeight.bold
                              : FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                ),
              ),
          separatorBuilder: (context, index) => SizedBox(
                width: 30,
              ),
          itemCount: weekList.length),
    );
  }
}
