part of 'collection_page_bloc.dart';

sealed class HomeCollectionPageState extends Equatable {
  const HomeCollectionPageState();

  @override
  List<Object> get props => [];
}

final class HomeCollectionPageInitial extends HomeCollectionPageState {}

final class HomeCollectionPageLoading extends HomeCollectionPageState {}

final class HomeCollectionPageLoaded extends HomeCollectionPageState {
  final CollectionEntity collection;

  const HomeCollectionPageLoaded(this.collection);

  @override
  List<Object> get props => [collection];
}

final class HomeCollectionPageError extends HomeCollectionPageState {
  final String message;

  const HomeCollectionPageError(this.message);

  @override
  List<Object> get props => [message];
}
