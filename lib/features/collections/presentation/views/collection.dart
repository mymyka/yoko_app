import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:yoko_app/features/collections/collections.dart';

class CollectionPageView extends StatelessWidget {
  final int collectionId;

  const CollectionPageView({super.key, required this.collectionId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Collection'),
      ),
      body: BlocConsumer<CollectionPageBloc, CollectionPageState>(
        listener: (context, state) => {},
        builder: (context, state) {
          if (state is CollectionPageLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is CollectionPageLoaded) {
            return Column(
              children: [
                Text(state.collection.name),
                Text(state.collection.id.toString()),
                const Text("Is stared"),
                Text(state.collection.isStarted.toString()),
                ElevatedButton(
                  onPressed: () => context.go('/study/$collectionId'),
                  child: const Text("Start Study"),
                ),
                ElevatedButton(
                  onPressed: () => {
                    context.read<CollectionPageBloc>().add(
                          AddCollectionToUserEvent(
                            AddCollectionToUserParams(id: state.collection.id),
                          ),
                        )
                  },
                  child: const Text("Add to user"),
                ),
              ],
            );
          } else if (state is CollectionPageError) {
            return Center(
              child: Text(state.message),
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
