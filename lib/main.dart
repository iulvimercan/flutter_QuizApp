import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 200),
                child: Image.asset(
                  'assets/images/quiz-logo.png',
                  width: 300,
                ),
              ),
              const Text(
                'Learn Flutter the fun way!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                ),
              ),
              const SizedBox(height: 35),
              ElevatedButton(
                onPressed: ( ){},
                child: const Text('Start Quiz'),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}