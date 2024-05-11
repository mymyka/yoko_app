import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yoko_app/features/study/study.dart';

class QuizView extends StatefulWidget {
  const QuizView({super.key});

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
    return BlocBuilder<QuizBloc, QuizState>(
      builder: (context, state) {
        if (state is QuizInitialState) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is QuizLoadingState) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is QuizLoadedState) {
          return Scaffold(
            body: PageView(
              scrollDirection: Axis.vertical,
              controller: _controller,
              children: [
                ...state.questions
                    .map(
                      (e) => QuizQuestionView(
                        question: e,
                        controller: _controller,
                        onRightAnswer: incrementScore,
                      ),
                    )
                    ,
                QuizScoreView(score: score),
              ],
            ),
          );
        } else if (state is QuizErrorState) {
          return const Center(child: Text('Failed to fetch quiz'));
        }
        return const Center(child: Text('Unknown error'));
      },
    );
  }
}
