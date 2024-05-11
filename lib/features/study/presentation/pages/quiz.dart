import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yoko_app/features/study/study.dart';
import 'package:yoko_app/injection_container.dart';

class QuizPage extends StatelessWidget {
  final int collectionId;

  const QuizPage({
    super.key,
    required this.collectionId,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider<QuizBloc>(
      create: (context) {
        return QuizBloc(
          sl(),
        )..add(
            GetQuizQuestionsEvent(
              GetQuizQuestionsParams(id: collectionId),
            ),
          );
      },
      child: const QuizView(),
    );
  }
}
