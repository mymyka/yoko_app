import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:yoko_app/features/collections/collections.dart';
import 'package:yoko_app/gen/strings.g.dart';
import 'package:yoko_app/utils/ext/ext.dart';

class CollectionPageView extends StatelessWidget {
  final CollectionEntity collection;
  final String parentRoute;

  const CollectionPageView({
    super.key,
    required this.collection,
    required this.parentRoute,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              height: 230,
            ),
            Positioned(
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(collection.bannerUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned.fill(
              left: 20,
              right: 20,
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(collection.posterUrl),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                collection.name,
                style: Theme.of(context).textTheme.h1,
                overflow: TextOverflow.ellipsis,
              ),
              Row(
                children: [
                  collection.isStarted
                      ? IconButton(
                          onPressed: () => {
                            context.go(
                              '/$parentRoute/collection/${collection.id}/study',
                            )
                          },
                          icon: const Icon(Icons.school_rounded),
                        )
                      : IconButton(
                          onPressed: () => {
                            context.read<CollectionPageBloc>().add(
                                  AddCollectionToUserEvent(
                                    AddCollectionToUserParams(
                                        id: collection.id),
                                  ),
                                )
                          },
                          icon: const Icon(Icons.add),
                        ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.thumb_up_rounded),
                  ),
                ],
              ),
              Center(
                child: PercentIndicator(
                  percent: collection.wordsLearned / collection.wordsCount,
                ),
              ),
              ListTile(
                leading: const Icon(Icons.account_balance_rounded),
                title: Text(t.collection.words_total),
                subtitle: Text(
                  collection.wordsCount.toString(),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.school_rounded),
                title: Text(t.collection.words_learned),
                subtitle: Text(
                  collection.wordsLearned.toString(),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
