import 'question.dart';

class QuizBrain {
  List<Question> _questions = [
    Question(q: 'You can lead a cow down stairs but not up stairs.', a: false),
    Question(
        q: 'Approximately one quarter of human bones are in the feet.',
        a: true),
    Question(q: 'A slug\'s blood is green.', a: true),
  ];

  int _currQuestion = 0;

  String getCurrQuestion() => this._questions[this._currQuestion].getQuestion();

  bool getCurrAnswer() => this._questions[this._currQuestion].getAnswer();

  void addQuestion({String q, bool a}) {
    this._questions.add(Question(q: q, a: a));
  }

  void nextQuestion() {
    this._currQuestion = (this._currQuestion + 1) % this._questions.length;
  }

  bool reachedEnd() {
    if (this._currQuestion >= this._questions.length - 1)
      return true;
    else
      return false;
  }

  void reset() {
    this._currQuestion = 0;
  }
}
