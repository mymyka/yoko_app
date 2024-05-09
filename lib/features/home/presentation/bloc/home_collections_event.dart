part of 'home_collections_bloc.dart';

sealed class HomeCollectionsEvent extends Equatable {
  const HomeCollectionsEvent();

  @override
  List<Object> get props => [];
}

final class GetHomeCollections extends HomeCollectionsEvent {
  final GetCollectionsParams params;

  const GetHomeCollections(this.params);

  @override
  List<Object> get props => [params];
}
