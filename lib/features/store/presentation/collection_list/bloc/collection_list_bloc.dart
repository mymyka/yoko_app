import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:yoko_app/features/general/general.dart';
import 'package:yoko_app/features/home/domain/usecases/fetch_public_collections.dart';
import 'package:yoko_app/features/home/home.dart';

part 'collection_list_event.dart';
part 'collection_list_state.dart';

class PublicCollectionListBloc
    extends Bloc<CollectionListEvent, PublicCollectionListState> {
  final FetchPublicCollectionsUseCase _fetchPublicCollectionsUseCase;

  PublicCollectionListBloc(this._fetchPublicCollectionsUseCase)
      : super(PublicCollectionListInitial()) {
    on<FetchPublicCollections>(_onFetchPublicCollections);
  }

  void _onFetchPublicCollections(
      FetchPublicCollections event, Emitter emit) async {
    emit(PublicCollectionListLoading());
    final result = await _fetchPublicCollectionsUseCase.call(event.params);
    result.fold(
      (error) => emit(PublicCollectionListError(error.message!)),
      (collections) => emit(PublicCollectionListLoaded(collections)),
    );
  }
}
