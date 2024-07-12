
class Question {
  Question({required this.question, required this.answers, required this.flagUrl}): correctAnswer = answers.first;

  final String question;
  final List<String> answers;
  final String correctAnswer;
  final String flagUrl;
  String? userAnswer;

  void reset() {
    answers.shuffle();
    userAnswer = null;
  }
}
