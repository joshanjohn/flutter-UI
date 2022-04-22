import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task_app/screens/home/home.dart';

void main() {
  runApp(const MyApp());
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
