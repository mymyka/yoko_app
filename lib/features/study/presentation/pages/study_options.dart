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
        title: Text('Study Options'),
        actions: [
          IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              context.go('/home/collection/$collectionId');
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Card(
              child: ListTile(
                title: Text('Quiz'),
                onTap: () {
                  context.go('/study/$collectionId/quiz');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
