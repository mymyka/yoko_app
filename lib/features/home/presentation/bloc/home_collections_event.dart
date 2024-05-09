part of 'home_collections_bloc.dart';

sealed class HomeCollectionsEvent extends Equatable {
  const HomeCollectionsEvent();

  @override
  List<Object> get props => [];
}

final class FetchHomeCollections extends HomeCollectionsEvent {
  final GetCollectionsParams params;

  const FetchHomeCollections(this.params);

  @override
  List<Object> get props => [params];
}

final class RefreshHomeCollections extends HomeCollectionsEvent {
  final GetCollectionsParams params;

  const RefreshHomeCollections(this.params);

  @override
  List<Object> get props => [params];
}
