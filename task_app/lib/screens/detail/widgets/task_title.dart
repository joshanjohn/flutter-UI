import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class taskTitle extends StatelessWidget {
  taskTitle({Key? key}) : super(key: key);
  TextStyle taskTitleStyle =
      const TextStyle(fontSize: 28, fontWeight: FontWeight.w600);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              'Task',
              style: GoogleFonts.satisfy(textStyle: taskTitleStyle),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.1),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Row(
                children: [
                  Text(
                    'Timeline',
                    style: TextStyle(
                        color: Colors.grey[800], fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.keyboard_arrow_down),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
