import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:yoko_app/features/general/domain/entities/paginatable_response.dart';
import 'package:yoko_app/features/home/home.dart';
import 'package:yoko_app/features/collections/collections.dart';

part 'home_collections_event.dart';
part 'home_collections_state.dart';

class HomeCollectionsBloc
    extends Bloc<HomeCollectionsEvent, HomeCollectionsState> {
  final FetchHomeCollectionsUseCase _fetchHomeCollectionsUseCase;

  HomeCollectionsBloc(this._fetchHomeCollectionsUseCase)
      : super(HomeCollectionsInitial()) {
    on<GetHomeCollections>(_onFetchHomeCollections);
  }

  void _onFetchHomeCollections(GetHomeCollections event, Emitter emit) async {
    emit(HomeCollectionsLoading());
    final result = await _fetchHomeCollectionsUseCase.call(event.params);
    result.fold(
      (error) => emit(HomeCollectionsError(error.message!)),
      (collections) => emit(HomeCollectionsLoaded(collections)),
    );
  }
}
