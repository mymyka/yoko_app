import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yoko_app/features/collections/collections.dart';
import 'package:yoko_app/features/general/general.dart';

class CreateCollectionPage extends StatelessWidget {
  const CreateCollectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CreateCollectionPageProvider(
      child: BlocConsumer<CreateCollectionPageBloc, CreateCollectionPageState>(
        listener: (context, state) {
          if (state is CreateCollectionPageSuccess) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                elevation: 0,
                backgroundColor: Colors.transparent,
                content: AwesomeSnackbarContent(
                  title: 'Collection created',
                  message: 'Collection has been created successfully',
                  contentType: ContentType.success,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            );
          } else if (state is CreateCollectionPageFailure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                    'Failed to create collection: ${state.exception.message}'),
              ),
            );
          }
        },
        builder: (context, state) {
          if (state is CreateCollectionPageLoading) {
            return const Center(
              child: Spinner(),
            );
          }
          if (state is CreateCollectionPageFailure) {
            return const Center(
              child: Text('Failed to create collection'),
            );
          }
          return const CreateCollectionView();
        },
      ),
    );
  }
}
