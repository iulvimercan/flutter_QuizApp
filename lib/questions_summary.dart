import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/question_no_container.dart';

import 'colors.dart';
import 'data/questions.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40),
      child: SizedBox(
        width: double.infinity,
        height: 450,
        child: Scrollbar(
          child: SingleChildScrollView(
            child: Column(
              children: questions.map((q) {
                var questionNo = (questions.indexOf(q) + 1).toString();

                return Container(
                  margin: const EdgeInsets.only(bottom: 30),
                  child: SizedBox(
                    child: Row(
                      children: [
                        QuestionNoContainer(questionNo, q.isCorrect()),
                        const SizedBox(width: 18),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                q.question,
                                style: GoogleFonts.lato(
                                  color: AppColors.whiteSoft,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                q.userAnswer ?? '~Empty~',
                                style: TextStyle(
                                  color: q.isCorrect()
                                      ? AppColors.correct
                                      : AppColors.incorrect,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              if (!q.isCorrect())
                                Text(
                                  'Correct Answer: ${q.correctAnswer}',
                                  style: const TextStyle(
                                    color: AppColors.warning,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
