
class Question {
  Question({required this.question, required this.answers, required this.correctAnswerIndex});

  final String question;
  final List<String> answers;
  final int correctAnswerIndex;
  int? userAnswerIndex;
}
