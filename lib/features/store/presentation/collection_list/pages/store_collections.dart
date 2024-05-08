import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yoko_app/features/home/domain/entities/fetch_home_collections_params.dart';
import 'package:yoko_app/features/store/presentation/collection_list/bloc/collection_list_bloc.dart';
import 'package:yoko_app/features/store/presentation/collection_list/views/public_collections.dart';
import 'package:yoko_app/injection_container.dart';

class StoreCollectionsPage extends StatelessWidget {
  const StoreCollectionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PublicCollectionListBloc(sl())
        ..add(
          const FetchPublicCollections(
            FetchHomeCollectionsParams(
              page: 1,
              pageSize: 10,
            ),
          ),
        ),
      child: const PublicCollectionsView(),
    );
  }
}
