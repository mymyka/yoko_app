import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yoko_app/features/collections/collections.dart';
import 'package:yoko_app/injection_container.dart';

class CreateCollectionPage extends StatelessWidget {
  const CreateCollectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CreateCollectionPageBloc>(
      create: (context) => CreateCollectionPageBloc(sl()),
      child: const CreateCollectionView(),
    );
  }
}
