import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/colors.dart';
import 'package:quiz_app/data/questions.dart';
import 'models/Question.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen(this.exitQuiz, {super.key});
  final void Function() exitQuiz;

  @override
  State createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  int questionIndex = 0;
  Question currentQuestion = questions.elementAt(0);

  void nextQuestion() {
    setState(() {
      if(questions.length - 1 != questionIndex) {
        questionIndex++;
        currentQuestion = questions.elementAt(questionIndex);
      }
    });
  }

  void saveAnswer(String answer) {
    setState(() {
      questions.elementAt(questionIndex).userAnswer = answer;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 42),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: (){},
                    icon: const Icon(Icons.arrow_back),
                    iconSize: 30,
                    color: AppColors.white,
                  ),
                  IconButton(
                    onPressed: widget.exitQuiz,
                    icon: const Icon(Icons.close_outlined),
                    iconSize: 30,
                    color: AppColors.white,
                  )
                ]
              ),
              const Spacer(),
              Text(
                currentQuestion.question,
                style: const  TextStyle(
                  color: AppColors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 54),
              ...currentQuestion.answers.map((answer) => AnswerButton(answer, currentQuestion.userAnswer==answer, saveAnswer)),
              const Spacer(),
            ],
          ),
        )
    );
  }
}