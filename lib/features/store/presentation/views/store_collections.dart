import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:yoko_app/features/general/domain/domain.dart';
import 'package:yoko_app/features/store/store.dart';
import 'package:yoko_app/features/collections/collections.dart';

class StoreCollectionsView extends StatelessWidget {
  final PaginatableResponseEntity<List<CollectionEntity>> pageCollections;

  const StoreCollectionsView({
    super.key,
    required this.pageCollections,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      scrollDirection: Axis.vertical,
      slivers: [
        SliverAppBar(
          surfaceTintColor: Colors.transparent,
          pinned: true,
          floating: false,
          backgroundColor: Theme.of(context).colorScheme.background,
          flexibleSpace: Padding(
            padding: const EdgeInsets.only(right: 16, left: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SegmentedButton(
                  segments: List.generate(
                    pageCollections.lastPage,
                    (index) => ButtonSegment(
                      value: index + 1,
                      label: Text('${index + 1}'),
                    ),
                  ),
                  selected: {pageCollections.currentPage},
                  onSelectionChanged: (value) {
                    context.read<PublicCollectionListBloc>().add(
                          FetchPublicCollections(
                            GetCollectionsParams(
                              page: value.first,
                              pageSize: 10,
                            ),
                          ),
                        );
                  },
                ),
                IconButton(
                  onPressed: () {
                    context.read<PublicCollectionListBloc>().add(
                          FetchPublicCollections(
                            GetCollectionsParams(
                              page: pageCollections.currentPage,
                              pageSize: 10,
                            ),
                          ),
                        );
                  },
                  icon: const Icon(Icons.refresh),
                ),
              ],
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.all(16),
          sliver: SliverList.separated(
            itemCount: pageCollections.data.length,
            itemBuilder: (context, index) {
              return CollectionCard(
                collection: pageCollections.data[index],
                onTap: () {
                  context.go(
                      '/store/collection/${pageCollections.data[index].id}');
                },
              );
            },
            separatorBuilder: (context, index) => const SizedBox(height: 8),
          ),
        ),
      ],
    );
  }
}
