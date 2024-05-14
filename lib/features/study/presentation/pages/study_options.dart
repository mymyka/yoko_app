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
            Card(
              child: InkWell(
                onTap: () {
                  context.go('/study/$collectionId/text');
                },
                child: Container(
                  width: 200,
                  height: 200,
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://images.unsplash.com/photo-1553729784-e91953dec042?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29uJTIwcmVhZGluZ3xlbnwwfHwwfHx8MA%3D%3D'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
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
                          'https://play-lh.googleusercontent.com/8xSX7C0edYgitTGwdbqgoB9jt5lp4nO7VY_jkE3jWUCypcugn5aRHSn9Y8-qQA53GSo'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
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
                          'https://play-lh.googleusercontent.com/FnsgGVK7BsdH3ckrTFq8OhBNlbZMlNOUEU-AJF85aGmwepitRbKK5a_4xgmXZ2f5FA=w240-h480-rw'),
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
