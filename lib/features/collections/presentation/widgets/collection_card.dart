import 'package:flutter/material.dart';
import 'package:yoko_app/features/collections/collections.dart';
import 'package:yoko_app/utils/ext/text.dart';

class CollectionCard extends StatelessWidget {
  final CollectionEntity collection;
  final VoidCallback onTap;

  const CollectionCard({
    super.key,
    required this.collection,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        elevation: 0,
        color: Theme.of(context).colorScheme.background,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    collection.posterUrl,
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 100,
                      child: Text(
                        collection.name,
                        style: Theme.of(context).textTheme.bodyBold,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Row(
                      children: [
                        const Icon(Icons.school_rounded),
                        const SizedBox(width: 4),
                        Text(
                          "${collection.wordsLearned}",
                          style: Theme.of(context).textTheme.bodyLight,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(Icons.account_balance_rounded),
                        const SizedBox(width: 4),
                        Text(
                          "${collection.wordsCount}",
                          style: Theme.of(context).textTheme.bodyLight,
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
            Row(
              children: [
                PercentIndicator(
                    percent: collection.wordsLearned / collection.wordsCount),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
