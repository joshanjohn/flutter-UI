import 'package:flutter/material.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 700) {
              return potrait_mode();
            } else {
              return landscape_mode();
            }
          },
        ),
      ),
    );
  }

  Column potrait_mode() {
    return Column(
      children: [
        Container(
          width: 200,
          height: 400,
          color: Colors.red,
        ),
        Container(
          width: 300,
          height: 200,
          color: Colors.yellow,
        )
      ],
    );
  }

  Row landscape_mode() {
    return Row(
      children: [
        Container(
          width: 200,
          height: 400,
          color: Colors.red,
        ),
        Container(
          width: 300,
          height: 200,
          color: Colors.yellow,
        )
      ],
    );
  }
}
