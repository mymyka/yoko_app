import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:yoko_app/features/general/domain/domain.dart';
import 'package:yoko_app/features/home/home.dart';
import 'package:yoko_app/features/collections/collections.dart';
import 'package:yoko_app/features/home/presentation/presentation.dart';

class HomeCollectionsView extends StatelessWidget {
  final PaginatableResponseEntity<List<CollectionEntity>> pageCollections;
  const HomeCollectionsView({
    super.key,
    required this.pageCollections,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      scrollDirection: Axis.vertical,
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.all(16),
          sliver: SliverAppBar(
            surfaceTintColor: Colors.transparent,
            pinned: true,
            floating: false,
            backgroundColor: Theme.of(context).colorScheme.background,
            flexibleSpace: Row(
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
                    context.read<HomeCollectionsBloc>().add(
                          GetHomeCollections(
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
                    context.read<HomeCollectionsBloc>().add(
                          GetHomeCollections(
                            GetCollectionsParams(
                              page: pageCollections.currentPage,
                              pageSize: 10,
                            ),
                          ),
                        );
                  },
                  icon: Icon(Icons.refresh),
                )
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
                  context
                      .go('/home/collection/${pageCollections.data[index].id}');
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
