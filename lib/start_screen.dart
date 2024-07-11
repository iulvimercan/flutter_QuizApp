import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
          ),
          const SizedBox(height: 64),
          const Text(
            'Learn Flutter the fun way!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
            ),
          ),
          const SizedBox(height: 240),
          ElevatedButton(
            onPressed: ( ){},
            style: ButtonStyle(
              // make the button bigger
              minimumSize: WidgetStateProperty.all(const Size(15, 50)),
              textStyle: WidgetStateProperty.all(const TextStyle(fontSize: 18)),
            ),
            child: const Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}