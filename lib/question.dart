class Question {
  String _question;
  bool _answer;

  Question({String q, bool a}) {
    this._question = q;
    this._answer = a;
  }

  String getQuestion() => this._question;

  bool getAnswer() => this._answer;
}
