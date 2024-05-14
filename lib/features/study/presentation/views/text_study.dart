import 'package:flutter/material.dart';
import 'package:yoko_app/features/study/study.dart';
import 'package:popover/popover.dart';
import 'package:yoko_app/utils/ext/ext.dart';

class TextStudyPageView extends StatelessWidget {
  final TextStudyEntity textStudy;

  const TextStudyPageView({
    super.key,
    required this.textStudy,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Wrap(
            alignment: WrapAlignment.spaceBetween,
            spacing: 10,
            runSpacing: 10,
            direction: Axis.horizontal,
            children: [
              const SizedBox(width: 50),
              ..._buildTextTokens(context),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _buildTextTokens(BuildContext context) {
    final List<String> clickableTokens =
        textStudy.words.map((e) => e.word.toLowerCase()).toList();
    final List<String> textTokens = textStudy.text.text.split(' ');
    return textTokens.map((e) {
      if (clickableTokens.contains(e.toLowerCase())) {
        return TouchableToken(
          text: e,
          color: Theme.of(context).colorScheme.primary,
          popoverInfo: PopoverInfo(
            word: e,
            translationUk: textStudy.words
                .firstWhere(
                    (element) => element.word.toLowerCase() == e.toLowerCase())
                .translationUk,
          ),
        );
      }
      return Container(
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            e,
            style: Theme.of(context).textTheme.bodyBold?.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                ),
          ),
        ),
      );
    }).toList();
  }
}

class PopoverInfo extends StatelessWidget {
  final String word;
  final String translationUk;

  const PopoverInfo({
    super.key,
    required this.word,
    required this.translationUk,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Expanded(
            child: Container(
              color: Theme.of(context).colorScheme.primary,
              child: Center(
                child: Text(
                  word,
                  style: Theme.of(context).textTheme.h3?.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Theme.of(context).colorScheme.primary,
              child: Center(
                child: Text(
                  translationUk,
                  style: Theme.of(context).textTheme.h3?.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TouchableToken extends StatelessWidget {
  final Color color;
  final String text;
  final PopoverInfo popoverInfo;

  const TouchableToken({
    super.key,
    required this.color,
    required this.text,
    required this.popoverInfo,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(10.0),
      child: InkWell(
        onTap: () {
          showPopover(
            backgroundColor: Theme.of(context).colorScheme.primary,
            width: 200,
            height: 200,
            context: context,
            direction: PopoverDirection.top,
            bodyBuilder: (context) => popoverInfo,
          );
        },
        child: Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              text,
              style: Theme.of(context).textTheme.bodyBold?.copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
