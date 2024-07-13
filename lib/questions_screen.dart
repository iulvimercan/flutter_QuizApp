import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/navigation_button.dart';
import 'package:quiz_app/colors.dart';

import 'package:quiz_app/data/questions.dart';

import 'models/Question.dart';


class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen(this.exitQuiz, this.submitQuiz, {super.key});
  final void Function() exitQuiz;
  final void Function() submitQuiz;

  @override
  State createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  int questionIndex = 0;
  Question currentQuestion = questions.elementAt(0);

  bool isLastQuestion() => questions.length - 1 == questionIndex;

  void nextQuestion() {
    setState(() {
      if(!isLastQuestion()) {
        questionIndex++;
        currentQuestion = questions.elementAt(questionIndex);
      }
    });
  }
  void previousQuestion() {
    setState(() {
      if(questions.isNotEmpty) {
        questionIndex--;
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
  void initState() {
    super.initState();
    questions.forEach((question) => question.reset());
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 42),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: widget.exitQuiz,
                    icon: const Icon(Icons.close_outlined),
                    iconSize: 30,
                    color: AppColors.white,
                    tooltip: 'Exit',
                  ),
                ]
              ),
              const Spacer(),
              DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      color: AppColors.white,
                      spreadRadius: 2.5,
                      blurStyle: BlurStyle.inner,
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                      currentQuestion.flagUrl,
                      width: 164,
                  ),
                )
              ),
              const SizedBox(height: 52),
              Text(
                currentQuestion.question,
                style: GoogleFonts.lato(
                  color: AppColors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 64),
              ...currentQuestion.answers.map((answer) => AnswerButton(answer, currentQuestion.userAnswer==answer, saveAnswer)),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  NavigationButton(questionIndex == 0 ? null : previousQuestion, Icons.arrow_back, 'Previous'),
                  const SizedBox(width: 16),
                  isLastQuestion()
                    ? NavigationButton(currentQuestion.userAnswer == null ? null : widget.submitQuiz, Icons.done, 'Submit', color: AppColors.green)
                    : NavigationButton(currentQuestion.userAnswer == null ? null : nextQuestion, Icons.arrow_forward, 'Next'),
                ]
              )
            ],
          ),
        )
    );
  }
}