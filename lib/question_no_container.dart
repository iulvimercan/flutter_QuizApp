import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'data/colors.dart';

class QuestionNoContainer extends StatelessWidget {
  const QuestionNoContainer(this.questionNo, this.isCorrect, {super.key});

  final String questionNo;
  final bool isCorrect;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isCorrect ? AppColors.correct : AppColors.incorrect,
        borderRadius: BorderRadius.circular(90),
        border: Border.all(color: AppColors.white, width: 1),
      ),
      width: 46,
      height: 46,
      margin: const EdgeInsets.only(bottom: 10),
      child: Center(
        child: Text(
          questionNo,
          style: GoogleFonts.lato(
            color: AppColors.white,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}