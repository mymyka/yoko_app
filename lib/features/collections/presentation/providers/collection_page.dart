import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yoko_app/features/collections/collections.dart';
import 'package:yoko_app/injection_container.dart';

class CollectionPageProvider extends StatelessWidget {
  final Widget child;
  final int id;

  const CollectionPageProvider({
    super.key,
    required this.child,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CollectionPageBloc>(
      create: (context) => CollectionPageBloc(sl(), sl())
        ..add(
          GetCollectionById(
            GetCollectionByIdParams(id: id),
          ),
        ),
      child: child,
    );
  }
}
