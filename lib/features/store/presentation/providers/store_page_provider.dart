import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yoko_app/features/store/store.dart';
import 'package:yoko_app/features/collections/collections.dart';
import 'package:yoko_app/injection_container.dart';

class StoreCollectionsPageProvider extends StatelessWidget {
  final Widget child;

  const StoreCollectionsPageProvider({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PublicCollectionListBloc(sl())
        ..add(
          const FetchPublicCollections(
            GetCollectionsParams(
              page: 1,
              pageSize: 10,
            ),
          ),
        ),
      child: child,
    );
  }
}
