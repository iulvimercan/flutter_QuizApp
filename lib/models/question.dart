
class Question {
  Question({required this.question, required this.answers}): correctAnswer = answers.first;

  final String question;
  final List<String> answers;
  final String correctAnswer;
  String? userAnswer;
}
