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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Spacer(),
          Text(
            'You answered $correctAnswerCount out of $totalQuestionCount questions correctly!',
            textAlign: TextAlign.center,
            style: GoogleFonts.lato(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),
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
          ),

        ],
      )
    );
  }
}