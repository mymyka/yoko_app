import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yoko_app/features/general/general.dart';
import 'package:yoko_app/features/home/home.dart';

class HomeCollectionsPage extends StatelessWidget {
  const HomeCollectionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeCollectionsPageProvider(
      child: BlocBuilder<HomeCollectionsBloc, HomeCollectionsState>(
        builder: (context, state) {
          if (state is HomeCollectionsLoading) {
            return const Center(
              child: Spinner(),
            );
          } else if (state is HomeCollectionsLoaded) {
            return HomeCollectionsView(pageCollections: state.pageCollections);
          } else {
            return const Center(
              child: Text('Error A'),
            );
          }
        },
      ),
    );
  }
}
