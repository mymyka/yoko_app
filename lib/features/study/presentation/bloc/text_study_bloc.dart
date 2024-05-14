import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:yoko_app/features/study/study.dart';

part 'text_study_event.dart';
part 'text_study_state.dart';

class TextStudyBloc extends Bloc<TextStudyEvent, TextStudyState> {
  final GetTextStudyUseCase getTextStudyUseCase;

  TextStudyBloc(this.getTextStudyUseCase) : super(TextStudyInitial()) {
    on<GetTextStudyEvent>(_onGetTextStudyEvent);
  }

  void _onGetTextStudyEvent(
    GetTextStudyEvent event,
    Emitter<TextStudyState> emit,
  ) async {
    emit(TextStudyLoading());
    final result = await getTextStudyUseCase.call(event.params);
    result.fold(
      (error) => emit(TextStudyError(error.message!)),
      (textStudy) => emit(TextStudyLoaded(textStudy)),
    );
  }
}
