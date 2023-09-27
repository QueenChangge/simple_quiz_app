import 'package:flutter/material.dart';
//import 'package:quiz_app/quiz.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 104, 10, 121), //primary color
      ),
      child: const Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'MyQuestion',
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            
            SizedBox(height:30),

            

          ],
        ),
      ),
    );
  }
}
