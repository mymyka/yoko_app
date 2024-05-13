import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:yoko_app/features/store/store.dart';
import 'package:yoko_app/features/collections/collections.dart';

class StoreCollectionsView extends StatelessWidget {
  const StoreCollectionsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PublicCollectionListBloc, StoreCollectionsState>(
      listener: (context, state) {
        if (state is StoreCollectionsError) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.message)),
          );
        }
      },
      builder: (context, state) {
        if (state is StoreCollectionsLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is StoreCollectionsLoaded) {
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
                  child: SegmentedButton(
                    segments: List.generate(
                      state.pageCollections.lastPage,
                      (index) => ButtonSegment(
                        value: index + 1,
                        label: Text('${index + 1}'),
                      ),
                    ),
                    selected: {state.pageCollections.currentPage},
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
                ),
              ),
              SliverList.separated(
                itemCount: state.pageCollections.data.length,
                itemBuilder: (context, index) {
                  return CollectionCard(
                    collection: state.pageCollections.data[index],
                    onTap: () {
                      context.go(
                          '/store/collection/${state.pageCollections.data[index].id}');
                    },
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(height: 8),
              ),
            ],
          );
        } else if (state is StoreCollectionsInitial) {
          return const Center(child: CircularProgressIndicator());
        } else {
          return const Center(child: Text('Error'));
        }
      },
    );
  }
}
