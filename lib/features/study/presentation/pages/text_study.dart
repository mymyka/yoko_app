import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yoko_app/features/general/general.dart';
import 'package:yoko_app/features/study/study.dart';

class TextStudyPage extends StatelessWidget {
  final int collectionId;

  const TextStudyPage({
    super.key,
    required this.collectionId,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reading'),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: BlocBuilder<TextStudyBloc, TextStudyState>(
        builder: (context, state) {
          if (state is TextStudyInitial) {
            return const Center(
              child: Spinner(),
            );
          } else if (state is TextStudyLoading) {
            return const Center(
              child: Spinner(),
            );
          } else if (state is TextStudyLoaded) {
            return TextStudyPageView(textStudy: state.textStudy);
          } else if (state is TextStudyError) {
            return Center(
              child: Text(state.message),
            );
          }
          return const Center(
            child: Spinner(),
          );
        },
      ),
    );
  }
}
