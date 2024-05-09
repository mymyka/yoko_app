import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:yoko_app/features/collections/presentation/widgets/collection_list.dart';
import 'package:yoko_app/features/store/presentation/bloc/collection_list_bloc.dart';

class PublicCollectionsView extends StatelessWidget {
  const PublicCollectionsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PublicCollectionListBloc, PublicCollectionListState>(
      listener: (context, state) {
        if (state is PublicCollectionListError) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.message)),
          );
        }
      },
      builder: (context, state) {
        if (state is PublicCollectionListLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is PublicCollectionListLoaded) {
          return CollectionList(
            collections: state.collections,
            onTap: (c, collection) =>
                c.go('/store/collection/${collection.id}'),
          );
        } else if (state is PublicCollectionListInitial) {
          return const Center(child: CircularProgressIndicator());
        } else {
          return const Center(child: Text('Error'));
        }
      },
    );
  }
}
