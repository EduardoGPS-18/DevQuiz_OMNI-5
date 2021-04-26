import 'package:DevQuiz/challenge/challenge_page.dart';
import 'package:flutter/material.dart';
import '../home/home_page.dart';
import '../splash/splash_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "DevQuiz",
      home: HomePage(),
    );
  }
}
