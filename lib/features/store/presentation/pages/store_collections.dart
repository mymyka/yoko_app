import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yoko_app/features/general/general.dart';
import 'package:yoko_app/features/store/store.dart';

class StoreCollectionsPage extends StatelessWidget {
  const StoreCollectionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return StoreCollectionsPageProvider(
      child: BlocConsumer<PublicCollectionListBloc, StoreCollectionsState>(
        listener: (context, state) {
          if (state is StoreCollectionsError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.message)),
            );
          }
        },
        builder: (context, state) {
          if (state is StoreCollectionsLoading) {
            return const Center(child: Spinner());
          } else if (state is StoreCollectionsLoaded) {
            return StoreCollectionsView(pageCollections: state.pageCollections);
          } else if (state is StoreCollectionsInitial) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return const Center(child: Text('Error'));
          }
        },
      ),
    );
  }
}
