import 'package:flutter/material.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State createState() => _QuizState();

}


class _QuizState extends State<Quiz> {

  @override
  Widget build(BuildContext context) {
    return const StartScreen();
  }
}