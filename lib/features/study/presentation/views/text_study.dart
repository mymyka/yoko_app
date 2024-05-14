import 'package:flutter/material.dart';
import 'package:yoko_app/features/study/study.dart';

class TextStudyPageView extends StatelessWidget {
  final TextStudyEntity textStudy;

  const TextStudyPageView({
    super.key,
    required this.textStudy,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(textStudy.text.text),
    );
  }
}
