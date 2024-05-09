import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yoko_app/features/collections/collections.dart';
import 'package:yoko_app/injection_container.dart';

class CollectionPage extends StatelessWidget {
  final int id;

  const CollectionPage({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CollectionPageBloc>(
      create: (context) => CollectionPageBloc(sl())
        ..add(
          GetCollectionById(
            GetCollectionByIdParams(id: id),
          ),
        ),
      child: const CollectionPageView(),
    );
  }
}
