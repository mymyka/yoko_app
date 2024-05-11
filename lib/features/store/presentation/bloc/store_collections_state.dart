part of 'store_collections_bloc.dart';

sealed class StoreCollectionsState extends Equatable {
  const StoreCollectionsState();

  @override
  List<Object> get props => [];
}

final class StoreCollectionsInitial extends StoreCollectionsState {}

final class StoreCollectionsLoading extends StoreCollectionsState {}

final class StoreCollectionsLoaded extends StoreCollectionsState {
  final PaginatableResponseEntity<List<CollectionEntity>> pageCollections;

  const StoreCollectionsLoaded(this.pageCollections);

  @override
  List<Object> get props => [pageCollections];
}

final class StoreCollectionsError extends StoreCollectionsState {
  final String message;

  const StoreCollectionsError(this.message);

  @override
  List<Object> get props => [message];
}
