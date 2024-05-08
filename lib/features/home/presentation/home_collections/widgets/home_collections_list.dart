import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:yoko_app/features/general/presentation/widgets/collection_list.dart';
import 'package:yoko_app/features/home/presentation/home_collections/bloc/home_collections_bloc.dart';

class HomeCollectionsList extends StatelessWidget {
  const HomeCollectionsList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCollectionsBloc, HomeCollectionsState>(
      builder: (context, state) {
        if (state is HomeCollectionsLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is HomeCollectionsLoaded) {
          return CollectionList(
            collections: state.collections,
            onTap: (c, collection) => c.go('/home/collection/${collection.id}'),
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
