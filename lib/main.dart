import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_bo/screens/homePage.dart';
import 'package:project_bo/screens/quiz6.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Quiz App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}