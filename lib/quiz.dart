import 'package:flutter/material.dart';
import 'package:quiz_app/landing_container.dart';
import 'package:quiz_app/questions_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  //perubah page
  Widget? activeScreen;

  @override
  void initState() { // inisialisasi tambahan
    //disediakan oleh state class
    activeScreen = LandingContainer(switchWidget);
    super.initState(); //mengingatkan parent bahwa ada initstate
  }

  void switchWidget() {
    setState(() {
      activeScreen = const QuestionScreen();
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(body: activeScreen),
    );
  }
}
