import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:yoko_app/features/collections/collections.dart';

part 'create_collection_page_event.dart';
part 'create_collection_page_state.dart';

class CreateCollectionPageBloc
    extends Bloc<CreateCollectionPageEvent, CreateCollectionPageState> {
  final CreateCollectionUseCase createCollectionUseCase;

  CreateCollectionPageBloc(this.createCollectionUseCase)
      : super(CreateCollectionPageInitial()) {
    on<CreateCollectionPageCreateCollectionEvent>(
      _onCreateCollectionPageCreateCollectionEvent,
    );
  }

  void _onCreateCollectionPageCreateCollectionEvent(
      CreateCollectionPageCreateCollectionEvent event, Emitter emit) async {
    emit(CreateCollectionPageLoading());
    final result = await createCollectionUseCase(event.params);
    result.fold(
      (failure) => emit(CreateCollectionPageFailure(failure)),
      (collection) => emit(CreateCollectionPageSuccess(collection)),
    );
  }
}
