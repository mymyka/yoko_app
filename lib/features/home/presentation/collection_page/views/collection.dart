import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yoko_app/features/home/home.dart';

class CollectionPageView extends StatelessWidget {
  const CollectionPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Collection'),
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
