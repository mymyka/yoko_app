import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:yoko_app/features/study/study.dart';

part 'quiz_event.dart';
part 'quiz_state.dart';

class QuizBloc extends Bloc<QuizEvent, QuizState> {
  final GetQuizQuestionsUseCase _getQuizQuestionsUseCase;

  QuizBloc(this._getQuizQuestionsUseCase) : super(QuizInitialState()) {
    on<GetQuizQuestionsEvent>(_onGetQuizQuestionsEvent);
  }

  void _onGetQuizQuestionsEvent(
    GetQuizQuestionsEvent event,
    Emitter<QuizState> emit,
  ) async {
    emit(QuizLoadingState());
    final result = await _getQuizQuestionsUseCase.call(event.params);
    result.fold(
      (error) => emit(QuizErrorState(error.message!)),
      (collections) => emit(QuizLoadedState(collections)),
    );
  }
}
