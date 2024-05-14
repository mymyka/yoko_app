import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class StudyOptionsPage extends StatelessWidget {
  final int collectionId;

  const StudyOptionsPage({
    super.key,
    required this.collectionId,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Study Options'),
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              context.go('/home/collection/$collectionId');
            },
          ),
        ],
      ),
      body: Center(
        child: ListView(
          children: [
            Card(
              child: InkWell(
                onTap: () {
                  context.go('/study/$collectionId/quiz');
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
                  context.go('/study/$collectionId/text');
                },
                child: Container(
                  width: 200,
                  height: 200,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    image: DecorationImage(
                      image:
                          Image.asset('assets/img/preview/reading-preview.jpg')
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
                  context.go('/study/$collectionId/chat');
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
      ),
    );
  }
}
