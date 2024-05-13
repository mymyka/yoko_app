import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yoko_app/features/collections/collections.dart';
import 'package:yoko_app/features/general/general.dart';

class CollectionPage extends StatelessWidget {
  final int id;

  const CollectionPage({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return CollectionPageProvider(
      id: id,
      child: BlocBuilder<CollectionPageBloc, CollectionPageState>(
        builder: (context, state) {
          if (state is CollectionPageLoading) {
            return const Center(
              child: Spinner(),
            );
          } else if (state is CollectionPageLoaded) {
            return CollectionPageView(collection: state.collection);
          } else if (state is CollectionPageError) {
            return Center(
              child: Text(state.message),
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
