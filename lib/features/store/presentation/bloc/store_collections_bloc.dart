import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:yoko_app/features/general/domain/entities/paginatable_response.dart';
import 'package:yoko_app/features/store/store.dart';
import 'package:yoko_app/features/collections/collections.dart';

part 'store_collections_event.dart';
part 'store_collections_state.dart';

class PublicCollectionListBloc
    extends Bloc<CollectionListEvent, StoreCollectionsState> {
  final GetStoreCollectionsUseCase _fetchPublicCollectionsUseCase;

  PublicCollectionListBloc(this._fetchPublicCollectionsUseCase)
      : super(StoreCollectionsInitial()) {
    on<FetchPublicCollections>(_onFetchPublicCollections);
  }

  void _onFetchPublicCollections(
      FetchPublicCollections event, Emitter emit) async {
    emit(StoreCollectionsLoading());
    final result = await _fetchPublicCollectionsUseCase.call(event.params);
    result.fold(
      (error) => emit(StoreCollectionsError(error.message!)),
      (collections) => emit(StoreCollectionsLoaded(collections)),
    );
  }
}
