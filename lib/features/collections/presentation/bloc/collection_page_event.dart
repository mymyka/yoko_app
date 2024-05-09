part of 'collection_page_bloc.dart';

sealed class CollectionPageEvent extends Equatable {
  const CollectionPageEvent();

  @override
  List<Object> get props => [];
}

class GetCollectionById extends CollectionPageEvent {
  final GetCollectionByIdParams params;

  const GetCollectionById(this.params);

  @override
  List<Object> get props => [params];
}

class AddCollectionToUserEvent extends CollectionPageEvent {
  final AddCollectionToUserParams params;

  const AddCollectionToUserEvent(this.params);

  @override
  List<Object> get props => [params];
}
