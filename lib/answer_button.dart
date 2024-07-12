import 'package:flutter/material.dart';
import 'package:quiz_app/colors.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton (this.answer, this.isSelected, this.saveAnswer, {super.key});

  final String answer;
  final bool isSelected;
  final void Function(String answer) saveAnswer;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ElevatedButton(
        onPressed: () => saveAnswer(answer),
        style: ElevatedButton.styleFrom(
          backgroundColor: isSelected ? AppColors.blue : AppColors.white,
          minimumSize: const Size(210, 50),
        ),
        child: Text(
          answer,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: isSelected ? AppColors.white : AppColors.textPurple
          )
        ),
      ),
    );
  }
}