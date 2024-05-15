import 'package:flutter/material.dart';
import 'package:yoko_app/features/general/general.dart';
import 'package:yoko_app/gen/strings.g.dart';
import 'package:yoko_app/utils/ext/ext.dart';

class QuizScoreView extends StatelessWidget {
  final int score;

  const QuizScoreView({super.key, required this.score});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              t.score.heading,
              style: Theme.of(context).textTheme.h2,
            ),
            const SizedBox(height: 20),
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Theme.of(context).colorScheme.primary,
              ),
              child: Center(
                child: Text(
                  score.toString(),
                  style: Theme.of(context).textTheme.h2?.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Button.outlined(
              onTap: () {
                Navigator.of(context).pop();
              },
              text: 'Finish Quiz',
            ),
          ],
        ),
      ),
    );
  }
}
