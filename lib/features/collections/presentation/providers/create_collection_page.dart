import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yoko_app/features/collections/collections.dart';
import 'package:yoko_app/injection_container.dart';

class CreateCollectionPageProvider extends StatelessWidget {
  final Widget child;

  const CreateCollectionPageProvider({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CreateCollectionPageBloc>(
      create: (context) => CreateCollectionPageBloc(sl()),
      child: child,
    );
  }
}
