import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:yoko_app/features/home/home.dart';
import 'package:yoko_app/features/collections/collections.dart';

class HomeCollectionsView extends StatelessWidget {
  const HomeCollectionsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Collections'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () => context.go('/home/collection/create/page'),
          ),
        ],
      ),
      body: BlocBuilder<HomeCollectionsBloc, HomeCollectionsState>(
        builder: (context, state) {
          if (state is HomeCollectionsLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is HomeCollectionsLoaded) {
            return CollectionList(
              collections: state.pageCollections.data,
              onTap: (c, collection) =>
                  c.go('/home/collection/${collection.id}'),
            );
          } else {
            return const Center(
              child: Text('Error A'),
            );
          }
        },
      ),
    );
  }
}
