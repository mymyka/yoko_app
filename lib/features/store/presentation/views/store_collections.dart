import 'package:flutter/material.dart';
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
          return CollectionList(
            collections: state.pageCollections.data,
            onTap: (c, collection) =>
                c.go('/store/collection/${collection.id}'),
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
