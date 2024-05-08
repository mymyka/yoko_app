import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:yoko_app/features/general/general.dart';
import 'package:yoko_app/features/home/home.dart';

part 'collection_page_event.dart';
part 'collection_page_state.dart';

class CollectionPageBloc
    extends Bloc<CollectionPageEvent, CollectionPageState> {
  final HomeCollectionsRepository repository;

  CollectionPageBloc(this.repository) : super(CollectionPageInitial()) {
    on<FetchHomeCollectionById>(_onFetchHomeCollectionById);
  }

  void _onFetchHomeCollectionById(
    FetchHomeCollectionById event,
    Emitter<CollectionPageState> emit,
  ) async {
    emit(CollectionPageLoading());
    final result =
        await repository.fetchHomeCollectionById(params: event.params);
    result.fold(
      (error) => emit(CollectionPageError(error.message ?? 'Error')),
      (collection) => emit(CollectionPageLoaded(collection)),
    );
  }
}
