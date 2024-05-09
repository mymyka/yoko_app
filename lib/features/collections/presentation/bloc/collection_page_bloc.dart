import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:yoko_app/features/general/general.dart';
import 'package:yoko_app/features/home/home.dart';

part 'collection_page_event.dart';
part 'collection_page_state.dart';

class CollectionPageBloc
    extends Bloc<CollectionPageEvent, HomeCollectionPageState> {
  final CollectionsRepository repository;

  CollectionPageBloc(this.repository) : super(HomeCollectionPageInitial()) {
    on<FetchHomeCollectionById>(_onFetchHomeCollectionById);
  }

  void _onFetchHomeCollectionById(
    FetchHomeCollectionById event,
    Emitter<HomeCollectionPageState> emit,
  ) async {
    emit(HomeCollectionPageLoading());
    final result = await repository.getHomeCollectionById(params: event.params);
    result.fold(
      (error) => emit(HomeCollectionPageError(error.message ?? 'Error')),
      (collection) => emit(HomeCollectionPageLoaded(collection)),
    );
  }
}
