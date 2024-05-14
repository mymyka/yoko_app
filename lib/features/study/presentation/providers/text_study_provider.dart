import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yoko_app/features/study/study.dart';
import 'package:yoko_app/injection_container.dart';

class TextStudyProvider extends StatelessWidget {
  final Widget child;
  final int collectionId;

  const TextStudyProvider({
    super.key,
    required this.child,
    required this.collectionId,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TextStudyBloc>(
      create: (context) {
        return TextStudyBloc(
          sl(),
        )..add(
            GetTextStudyEvent(
              GetTextStudyParams(collectionId: collectionId),
            ),
          );
      },
      child: child,
    );
  }
}
