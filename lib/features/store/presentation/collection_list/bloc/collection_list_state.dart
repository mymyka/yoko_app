part of 'collection_list_bloc.dart';

sealed class PublicCollectionListState extends Equatable {
  const PublicCollectionListState();

  @override
  List<Object> get props => [];
}

final class PublicCollectionListInitial extends PublicCollectionListState {}

final class PublicCollectionListLoading extends PublicCollectionListState {}

final class PublicCollectionListLoaded extends PublicCollectionListState {
  final List<CollectionEntity> collections;

  const PublicCollectionListLoaded(this.collections);

  @override
  List<Object> get props => [collections];
}

final class PublicCollectionListError extends PublicCollectionListState {
  final String message;

  const PublicCollectionListError(this.message);

  @override
  List<Object> get props => [message];
}
