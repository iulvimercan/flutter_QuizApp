import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State createState() => _QuizState();

}


class _QuizState extends State<Quiz> {

  String activeScreen = 'start-screen';

  void startQuiz() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF311B92),
                Color(0xFF512DA8),
                Color(0xFF673AB7),
                Color(0xFF9575CD),
              ],
            ),
          ),
          child: activeScreen == 'start-screen'
              ? StartScreen(startQuiz)
              : const QuestionsScreen(),
        ),
      ),
    );
  }
}