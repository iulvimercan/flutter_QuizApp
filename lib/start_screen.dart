import 'package:flutter/material.dart';
import 'package:quiz_app/colors.dart';

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
            color: AppColors.white,
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
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: AppColors.white,
                  blurRadius: 50,
                  spreadRadius: -2,
                ),
              ],
            ),
            child: ElevatedButton(
              onPressed: ( ){},
              style: ButtonStyle(
                minimumSize: WidgetStateProperty.all(const Size(15, 50)),
                textStyle: WidgetStateProperty.all(const TextStyle(fontSize: 18)),
                backgroundColor: WidgetStateProperty.all(AppColors.white),
              ),
              child: const Text(
                'Start Quiz',
                style: TextStyle(
                  color: AppColors.darkPurple,
                  fontWeight: FontWeight.w400
              ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}