import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class StudyOptionsPage extends StatelessWidget {
  final int collectionId;
  final String parentRoute;

  const StudyOptionsPage({
    super.key,
    required this.collectionId,
    required this.parentRoute,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        children: [
          Card(
            child: InkWell(
              onTap: () {
                context
                    .go('/$parentRoute/collection/$collectionId/study/quiz');
              },
              child: Container(
                width: 200,
                height: 200,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  image: DecorationImage(
                    image: Image.asset('assets/img/preview/quiz-preview.jpg')
                        .image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          Card(
            child: InkWell(
              onTap: () {
                context
                    .go('/$parentRoute/collection/$collectionId/study/text');
              },
              child: Container(
                width: 200,
                height: 200,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  image: DecorationImage(
                    image: Image.asset('assets/img/preview/reading-preview.jpg')
                        .image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          Card(
            child: InkWell(
              onTap: () {
                context
                    .go('/$parentRoute/collection/$collectionId/study/chat');
              },
              child: Container(
                width: 200,
                height: 200,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  image: DecorationImage(
                    image: Image.asset('assets/img/preview/chat-preview.jpg')
                        .image,
                    fit: BoxFit.cover,
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
