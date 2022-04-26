import 'package:flutter/material.dart';
import 'package:task_app/models/tasks.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:task_app/screens/detail/details.dart';

class Tasks extends StatelessWidget {
  final tasksList = Task.generateTasks();
  Tasks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: GridView.builder(
        itemCount: tasksList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return tasksList[index].isLast
              ? _buildAddTask()
              : _buildTask(context, tasksList[index]);
        },
      ),
    );
  }

  Widget _buildAddTask() {
    return DottedBorder(
      dashPattern: [10, 10],
      borderType: BorderType.RRect,
      strokeWidth: 2,
      color: Colors.grey,
      radius: Radius.circular(20),
      child: Center(
          child: Text(
        '+ ADD',
        style: TextStyle(
            color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
      )),
    );
  }

  Widget _buildTask(BuildContext context, Task task) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => DetailPage(task)),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: task.bgColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 15),
              child: Icon(
                task.iconData,
                size: 35,
                color: task.iconColor,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                task.title.toString(),
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildTaskStatus(
                    task.btnColor, task.iconColor, '${task.left} left'),
                SizedBox(
                  width: 10,
                ),
                _buildTaskStatus(
                    Colors.white, task.iconColor, '${task.done} Done')
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildTaskStatus(Color? bgColor, Color? txColor, String text) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text(
        text,
        style: TextStyle(color: txColor),
      ),
    );
  }
}
