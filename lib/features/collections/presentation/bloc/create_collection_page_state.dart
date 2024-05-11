part of 'create_collection_page_bloc.dart';

sealed class CreateCollectionPageState extends Equatable {
  const CreateCollectionPageState();

  @override
  List<Object> get props => [];
}

final class CreateCollectionPageInitial extends CreateCollectionPageState {}

final class CreateCollectionPageLoading extends CreateCollectionPageState {}

final class CreateCollectionPageSuccess extends CreateCollectionPageState {
  final CollectionEntity collection;

  const CreateCollectionPageSuccess(this.collection);

  @override
  List<Object> get props => [collection];
}

final class CreateCollectionPageFailure extends CreateCollectionPageState {
  final DioException exception;

  const CreateCollectionPageFailure(this.exception);

  @override
  List<Object> get props => [exception];
}
