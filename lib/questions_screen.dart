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
        child: Column(
          children: [
            const SizedBox(height: 42),
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
            const Text('QuestionsScreen'),
          ],
        )
    );
  }
}