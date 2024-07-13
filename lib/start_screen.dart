import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/colors.dart';
import 'package:quiz_app/quiz.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

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
            style: GoogleFonts.lato(
              color: Colors.white,
              fontSize: 24,
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
            child: ElevatedButton.icon(
              onPressed: startQuiz,
              style: ButtonStyle(
                minimumSize: WidgetStateProperty.all(const Size(15, 50)),
                textStyle: WidgetStateProperty.all(const TextStyle(fontSize: 18)),
                backgroundColor: WidgetStateProperty.all(AppColors.white),
                padding: WidgetStateProperty.all(const EdgeInsets.symmetric(horizontal: 20)),
              ),
              icon: const Icon(
                  Icons.arrow_forward
              ),
              iconAlignment: IconAlignment.end,
              label: const Text(
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