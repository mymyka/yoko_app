import 'package:flutter/material.dart';
import 'package:yoko_app/features/collections/collections.dart';

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
    return SliverList.separated(
      itemBuilder: (context, index) => CollectionCard(
        collection: collections[index],
        onTap: () => {
          onTap(context, collections[index]),
        },
      ),
      separatorBuilder: (context, index) => const SizedBox(height: 8),
    );
  }
}
