part of 'collection_page_bloc.dart';

sealed class CollectionPageEvent extends Equatable {
  const CollectionPageEvent();

  @override
  List<Object> get props => [];
}

class FetchHomeCollectionById extends CollectionPageEvent {
  final FetchHomeCollectionByIdParams params;

  const FetchHomeCollectionById(this.params);

  @override
  List<Object> get props => [params];
}
