import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State createState() => _QuizState();

}


class _QuizState extends State<Quiz> {

  String activeScreen = 'start_screen';

  void startQuiz() {
    setState(() {
      activeScreen = 'questions_screen';
    });
  }

  void exitQuiz() => setState(() => activeScreen = 'start_screen');

  void submitQuiz() => setState(() => activeScreen = 'results_screen');

  @override
  Widget build(BuildContext context) {
    final screenWidget = (activeScreen == 'start_screen')? StartScreen(startQuiz)
        : (activeScreen == 'questions_screen')? QuestionsScreen(exitQuiz, submitQuiz)
        : const ResultsScreen();

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
          child: screenWidget,
        ),
      ),
    );
  }
}