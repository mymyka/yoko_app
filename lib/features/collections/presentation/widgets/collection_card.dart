import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:yoko_app/features/general/general.dart';
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
    return Card(
      elevation: 0,
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(
            collection.posterUrl,
          ),
        ),
        title:
            Text(collection.name, style: Theme.of(context).textTheme.bodyBold),
        subtitle: Text(
          "${collection.wordsLearned}/${collection.wordsCount}",
          style: Theme.of(context).textTheme.bodyLight,
        ),
        trailing: CircularPercentIndicator(
          radius: 20.0,
          percent: collection.wordsLearned / collection.wordsCount,
          backgroundColor: Theme.of(context).splashColor,
          center: Text(
            "${(collection.wordsLearned / collection.wordsCount * 100).toInt()}%",
            style: Theme.of(context).textTheme.bodyCaption,
          ),
        ),
        onTap: onTap,
      ),
    );
  }
}
