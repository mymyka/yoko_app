part of 'create_collection_page_bloc.dart';

sealed class CreateCollectionPageEvent extends Equatable {
  const CreateCollectionPageEvent();

  @override
  List<Object> get props => [];
}

final class CreateCollectionPageCreateCollectionEvent
    extends CreateCollectionPageEvent {
  final CreateCollectionParams params;

  const CreateCollectionPageCreateCollectionEvent(this.params);

  @override
  List<Object> get props => [params];
}
