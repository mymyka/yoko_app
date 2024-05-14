import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yoko_app/features/study/study.dart';
import 'package:yoko_app/injection_container.dart';

class QuizPageProvider extends StatelessWidget {
  final Widget child;
  final int collectionId;

  const QuizPageProvider({
    super.key,
    required this.collectionId,
    required this.child,
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
      child: child,
    );
  }
}
