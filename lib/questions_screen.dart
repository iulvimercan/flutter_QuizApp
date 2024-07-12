import 'package:flutter/material.dart';
import 'package:quiz_app/colors.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen(this.exitQuiz, {super.key});

  final void Function() exitQuiz;

  @override
  State createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
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
              const Text('QuestionsScreen'),
              const Spacer(),
            ],
          ),
        )
    );
  }
}