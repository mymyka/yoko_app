import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:yoko_app/features/collections/collections.dart';
import 'package:yoko_app/features/general/general.dart';
import 'package:yoko_app/utils/ext/ext.dart';

class CollectionPageView extends StatelessWidget {
  final int collectionId;

  const CollectionPageView({super.key, required this.collectionId});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CollectionPageBloc, CollectionPageState>(
      builder: (context, state) {
        if (state is CollectionPageLoading) {
          return const Center(
            child: Spinner(),
          );
        } else if (state is CollectionPageLoaded) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(state.collection.bannerUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          state.collection.name,
                          style: Theme.of(context).textTheme.h3,
                        ),
                        state.collection.isStarted
                            ? IconButton(
                                onPressed: () =>
                                    context.go('/study/$collectionId'),
                                icon: const Icon(Icons.school_rounded),
                              )
                            : IconButton(
                                onPressed: () => {
                                  context.read<CollectionPageBloc>().add(
                                        AddCollectionToUserEvent(
                                          AddCollectionToUserParams(
                                              id: state.collection.id),
                                        ),
                                      )
                                },
                                icon: const Icon(Icons.add),
                              ),
                      ],
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      child: PercentIndicator(
                        percent: state.collection.wordsLearned /
                            state.collection.wordsCount,
                      ),
                    ),
                  ],
                ),
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
    );
  }
}
