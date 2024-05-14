import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yoko_app/features/home/home.dart';
import 'package:yoko_app/injection_container.dart';
import 'package:yoko_app/features/collections/collections.dart';

class HomeCollectionsPageProvider extends StatelessWidget {
  final Widget child;

  const HomeCollectionsPageProvider({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeCollectionsBloc>(
      create: (context) => HomeCollectionsBloc(
        sl(),
      )..add(
          const GetHomeCollections(
            GetCollectionsParams(page: 1, pageSize: 10),
          ),
        ),
      child: child,
    );
  }
}
