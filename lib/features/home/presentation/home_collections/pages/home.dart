import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yoko_app/features/home/domain/entities/fetch_home_collections_params.dart';
import 'package:yoko_app/features/home/presentation/home_collections/bloc/home_collections_bloc.dart';
import 'package:yoko_app/features/home/presentation/home_collections/widgets/home_collections_list.dart';
import 'package:yoko_app/injection_container.dart';

class HomeCollectionsPage extends StatelessWidget {
  const HomeCollectionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeCollections'),
        centerTitle: true,
      ),
      body: BlocProvider<HomeCollectionsBloc>(
        create: (context) => HomeCollectionsBloc(
          sl(),
        )..add(
            const FetchHomeCollections(
              FetchHomeCollectionsParams(page: 0, pageSize: 10),
            ),
          ),
        child: const HomeCollectionsList(),
      ),
    );
  }
}
