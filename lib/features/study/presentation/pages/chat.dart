import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yoko_app/features/study/presentation/presentation.dart';

class ChatPage extends StatelessWidget {
  final int collectionId;

  const ChatPage({
    super.key,
    required this.collectionId,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextStudyProvider(
          collectionId: collectionId,
          child: BlocBuilder<TextStudyBloc, TextStudyState>(
            builder: (context, state) {
              if (state is TextStudyLoaded) {
                return ChatView(textStudy: state.textStudy);
              } else if (state is TextStudyError) {
                return Text('Error: ${state.message}');
              }
              return const CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}
