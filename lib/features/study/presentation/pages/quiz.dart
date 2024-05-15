import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yoko_app/features/study/study.dart';
import 'package:yoko_app/gen/strings.g.dart';

class QuizPage extends StatelessWidget {
  final int collectionId;

  const QuizPage({
    super.key,
    required this.collectionId,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(t.study.quiz.heading),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: QuizPageProvider(
        collectionId: collectionId,
        child: BlocBuilder<QuizBloc, QuizState>(
          builder: (context, state) {
            if (state is QuizInitialState) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is QuizLoadingState) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is QuizLoadedState) {
              return QuizView(questions: state.questions);
            } else if (state is QuizErrorState) {
              return const Center(child: Text('Failed to fetch quiz'));
            }
            return const Center(child: Text('Unknown error'));
          },
        ),
      ),
    );
  }
}
