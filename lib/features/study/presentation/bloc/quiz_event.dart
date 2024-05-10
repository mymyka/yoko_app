part of 'quiz_bloc.dart';

sealed class QuizEvent extends Equatable {
  const QuizEvent();

  @override
  List<Object> get props => [];
}

final class GetQuizQuestionsEvent extends QuizEvent {
  final GetQuizQuestionsParams params;

  const GetQuizQuestionsEvent(this.params);

  @override
  List<Object> get props => [params];
}
