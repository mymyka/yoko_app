part of 'collection_page_bloc.dart';

sealed class CollectionPageState extends Equatable {
  const CollectionPageState();

  @override
  List<Object> get props => [];
}

final class CollectionPageInitial extends CollectionPageState {}

final class CollectionPageLoading extends CollectionPageState {}

final class CollectionPageLoaded extends CollectionPageState {
  final CollectionEntity collection;

  const CollectionPageLoaded(this.collection);

  @override
  List<Object> get props => [collection];
}

final class CollectionPageError extends CollectionPageState {
  final String message;

  const CollectionPageError(this.message);

  @override
  List<Object> get props => [message];
}
