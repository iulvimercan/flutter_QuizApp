import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_summary.dart';

import 'colors.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(this.exitQuiz, {super.key});

  final void Function() exitQuiz;

  @override
  Widget build(BuildContext context) {
    final totalQuestionCount = questions.length;
    final correctAnswerCount = questions.where((q) => q.isCorrect()).length;

    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Spacer(),
            Icon(
              correctAnswerCount >= totalQuestionCount / 2
                  ? Icons.sentiment_very_satisfied
                  : Icons.sentiment_very_dissatisfied,
              size: 100,
              color: AppColors.blueAccent.withOpacity(0.8),
            ),
            SizedBox(height: 10),
            Text(
              'You answered $correctAnswerCount out of $totalQuestionCount questions correctly!',
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: AppColors.white),
            ),
            const Spacer(),
            const QuestionsSummary(),
            const Spacer(),
            ElevatedButton.icon(
              onPressed: exitQuiz,
              icon: const Icon(Icons.home, color: AppColors.darkPurple),
              label: const Text(
                'Home',
                style: TextStyle(
                  color: AppColors.darkPurple,
                  fontWeight: FontWeight.w400,
                ),
              ),
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(130, 50),
                elevation: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
