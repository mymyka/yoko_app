import 'package:flutter/material.dart';
import 'package:yoko_app/features/general/general.dart';

class CollectionList extends StatelessWidget {
  final List<CollectionEntity> collections;
  final void Function(BuildContext, CollectionEntity) onTap;

  const CollectionList({
    super.key,
    required this.collections,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: collections.length,
      separatorBuilder: (context, index) => const SizedBox(height: 8),
      itemBuilder: (context, index) => CollectionCard(
        collection: collections[index],
        onTap: () => {
          onTap(context, collections[index]),
        },
      ),
    );
  }
}
