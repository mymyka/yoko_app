import 'package:flutter/material.dart';
import 'package:yoko_app/features/study/study.dart';

class QuizQuestionView extends StatelessWidget {
  final QuizQuestionEntity question;
  final PageController controller;
  final void Function() onRightAnswer;

  const QuizQuestionView({
    super.key,
    required this.question,
    required this.controller,
    required this.onRightAnswer,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(question.word),
            ...question.answers.map((answer) => Text(answer.translation)),
            ElevatedButton(
              onPressed: () {
                controller.nextPage(
                  duration: const Duration(milliseconds: 1500),
                  curve: Curves.elasticOut,
                );
              },
              child: const Text('Next'),
            ),
            ElevatedButton(
              onPressed: onRightAnswer,
              child: Text('Right Answear'),
            ),
          ],
        ),
      ),
    );
  }
}
