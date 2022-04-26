import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task_app/models/tasks.dart';
import 'package:task_app/screens/detail/details.dart';
import 'package:task_app/screens/home/home.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  // runApp(
  //   DevicePreview(
  //     builder: (context) => MyApp(), // Wrap your app
  //   ),
  // );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.transparent),
      debugShowCheckedModeBanner: false,
      title: 'Task App',
      home: HomePage(),
    );
  }
}
