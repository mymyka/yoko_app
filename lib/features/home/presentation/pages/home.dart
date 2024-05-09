import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yoko_app/features/home/home.dart';
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
              GetCollectionsParams(page: 0, pageSize: 10),
            ),
          ),
        child: const HomeCollections(),
      ),
    );
  }
}
