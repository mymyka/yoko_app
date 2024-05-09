part of 'home_collections_bloc.dart';

sealed class HomeCollectionsState extends Equatable {
  const HomeCollectionsState();

  @override
  List<Object> get props => [];
}

final class HomeCollectionsInitial extends HomeCollectionsState {}

final class HomeCollectionsLoading extends HomeCollectionsState {}

final class HomeCollectionsLoaded extends HomeCollectionsState {
  final List<CollectionEntity> collections;

  const HomeCollectionsLoaded(this.collections);

  @override
  List<Object> get props => [collections];
}

final class HomeCollectionsError extends HomeCollectionsState {
  final String message;

  const HomeCollectionsError(this.message);

  @override
  List<Object> get props => [message];
}

final class HomeCollectionsRefreshing extends HomeCollectionsState {}
