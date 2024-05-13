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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://thumbs.dreamstime.com/b/male-hand-holding-megaphone-quiz-time-speech-bubble-loudspeaker-banner-business-marketing-advertising-vector-125104939.jpg'),
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
