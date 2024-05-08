import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:yoko_app/features/general/domain/entities/collection.dart';
import 'package:yoko_app/features/home/domain/entities/fetch_home_collections_params.dart';
import 'package:yoko_app/features/home/domain/usecases/fetch_home_collections.dart';

part 'home_collections_event.dart';
part 'home_collections_state.dart';

class HomeCollectionsBloc
    extends Bloc<HomeCollectionsEvent, HomeCollectionsState> {
  final FetchHomeCollectionsUseCase _fetchHomeCollectionsUseCase;

  HomeCollectionsBloc(this._fetchHomeCollectionsUseCase)
      : super(HomeCollectionsInitial()) {
    on<FetchHomeCollections>(_onFetchHomeCollections);
  }

  void _onFetchHomeCollections(FetchHomeCollections event, Emitter emit) async {
    emit(HomeCollectionsLoading());
    final result = await _fetchHomeCollectionsUseCase.call(event.params);
    result.fold(
      (error) => emit(HomeCollectionsError(error.message!)),
      (collections) => emit(HomeCollectionsLoaded(collections)),
    );
  }

  void _onRefreshHomeCollections(
      RefreshHomeCollections event, Emitter emit) async {
    emit(HomeCollectionsRefreshing());
    final result = await _fetchHomeCollectionsUseCase.call(event.params);
    result.fold(
      (error) => emit(HomeCollectionsError(error.message!)),
      (collections) => emit(HomeCollectionsLoaded(collections)),
    );
  }
}
