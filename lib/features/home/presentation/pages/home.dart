import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yoko_app/features/home/home.dart';
import 'package:yoko_app/injection_container.dart';
import 'package:yoko_app/features/collections/collections.dart';

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
            const GetHomeCollections(
              GetCollectionsParams(page: 1, pageSize: 10),
            ),
          ),
        child: const HomeCollectionsView(),
      ),
    );
  }
}
