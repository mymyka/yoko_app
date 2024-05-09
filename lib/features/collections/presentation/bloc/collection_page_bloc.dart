import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:yoko_app/features/collections/collections.dart';

part 'collection_page_event.dart';
part 'collection_page_state.dart';

class CollectionPageBloc
    extends Bloc<CollectionPageEvent, CollectionPageState> {
  final GetCollectionByIdUseCase getCollectionByIdUseCase;
  final AddCollectionToUserUseCase addCollectionToUserUseCase;

  CollectionPageBloc(
      this.getCollectionByIdUseCase, this.addCollectionToUserUseCase)
      : super(CollectionPageInitial()) {
    on<GetCollectionById>(_onFetchHomeCollectionById);
    on<AddCollectionToUserEvent>(_onAddCollectionToUserEvent);
  }

  void _onFetchHomeCollectionById(
    GetCollectionById event,
    Emitter<CollectionPageState> emit,
  ) async {
    emit(CollectionPageLoading());
    final result = await getCollectionByIdUseCase(event.params);
    result.fold(
      (error) => emit(CollectionPageError(error.message ?? 'Error')),
      (collection) => emit(CollectionPageLoaded(collection)),
    );
  }

  void _onAddCollectionToUserEvent(
    AddCollectionToUserEvent event,
    Emitter<CollectionPageState> emit,
  ) async {
    emit(CollectionPageLoading());
    final result = await addCollectionToUserUseCase(event.params);
    result.fold(
      (error) => emit(CollectionPageError(error.message ?? 'Error')),
      (collection) => emit(CollectionPageLoaded(collection)),
    );
  }
}
