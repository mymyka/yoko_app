import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:yoko_app/features/home/home.dart';
import 'package:yoko_app/features/collections/collections.dart';

class HomeCollectionsView extends StatelessWidget {
  const HomeCollectionsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCollectionsBloc, HomeCollectionsState>(
      builder: (context, state) {
        if (state is HomeCollectionsLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is HomeCollectionsLoaded) {
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
                  flexibleSpace: SegmentedButton(
                    segments: List.generate(
                      state.pageCollections.lastPage,
                      (index) => ButtonSegment(
                        value: index + 1,
                        label: Text('${index + 1}'),
                      ),
                    ),
                    selected: {state.pageCollections.currentPage},
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
                ),
              ),
              SliverPadding(
                padding: const EdgeInsets.all(16),
                sliver: SliverList.separated(
                  itemCount: state.pageCollections.data.length,
                  itemBuilder: (context, index) {
                    return CollectionCard(
                      collection: state.pageCollections.data[index],
                      onTap: () {
                        context.go(
                            '/home/collection/${state.pageCollections.data[index].id}');
                      },
                    );
                  },
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 8),
                ),
              ),
            ],
          );
        } else {
          return const Center(
            child: Text('Error A'),
          );
        }
      },
    );
  }
}
