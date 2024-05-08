part of 'collection_list_bloc.dart';

sealed class CollectionListEvent extends Equatable {
  const CollectionListEvent();

  @override
  List<Object> get props => [];
}

final class FetchPublicCollections extends CollectionListEvent {
  final FetchHomeCollectionsParams params;

  const FetchPublicCollections(this.params);

  @override
  List<Object> get props => [params];
}
