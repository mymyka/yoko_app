import 'package:flutter/material.dart';

class QuizScoreView extends StatelessWidget {
  final int score;

  const QuizScoreView({super.key, required this.score});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text('Your score is: $score'),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Close'),
            ),
          ],
        ),
      ),
    );
  }
}
