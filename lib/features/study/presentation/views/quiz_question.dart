import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:yoko_app/features/general/general.dart';
import 'package:yoko_app/features/study/study.dart';
import 'package:yoko_app/utils/ext/ext.dart';

class QuizQuestionView extends StatefulWidget {
  final QuizQuestionEntity question;
  final PageController controller;
  final void Function() onRightAnswer;

  QuizQuestionView({
    super.key,
    required this.question,
    required this.controller,
    required this.onRightAnswer,
  });

  @override
  State<QuizQuestionView> createState() => _QuizQuestionViewState();
}

class _QuizQuestionViewState extends State<QuizQuestionView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Theme.of(context).colorScheme.primary,
              ),
              child: Center(
                child: Text(
                  widget.question.word,
                  style: Theme.of(context).textTheme.h1?.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                ),
              ),
            ),
            ...widget.question.answers.map(
              (e) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Button.outlined(
                  onTap: () {
                    if (e.isAnswer) {
                      widget.onRightAnswer();
                    }
                    widget.controller.nextPage(
                      duration: const Duration(milliseconds: 1500),
                      curve: Curves.elasticOut,
                    );
                  },
                  text: e.translation,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
