import 'package:flutter/material.dart';
import 'package:yoko_app/features/study/study.dart';

class QuizView extends StatefulWidget {
  final List<QuizQuestionEntity> questions;
  const QuizView({
    super.key,
    required this.questions,
  });

  @override
  State<QuizView> createState() => _QuizViewState();
}

class _QuizViewState extends State<QuizView> {
  final _controller = PageController();
  late int score;

  @override
  void initState() {
    super.initState();
    score = 0;
  }

  void incrementScore() {
    setState(() {
      score++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      controller: _controller,
      children: [
        ...widget.questions.map(
          (e) => QuizQuestionView(
            question: e,
            controller: _controller,
            onRightAnswer: incrementScore,
          ),
        ),
        QuizScoreView(score: score),
      ],
    );
  }
}
