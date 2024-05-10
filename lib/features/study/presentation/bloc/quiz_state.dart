part of 'quiz_bloc.dart';

sealed class QuizState extends Equatable {
  const QuizState();

  @override
  List<Object> get props => [];
}

final class QuizInitialState extends QuizState {}

final class QuizLoadingState extends QuizState {}

final class QuizLoadedState extends QuizState {
  final List<QuizQuestionEntity> questions;

  const QuizLoadedState(this.questions);

  @override
  List<Object> get props => [questions];
}

final class QuizErrorState extends QuizState {
  final String message;

  const QuizErrorState(this.message);

  @override
  List<Object> get props => [message];
}

final class QuizFinishedState extends QuizState {
  final int correctAnswers;
  final int totalQuestions;

  const QuizFinishedState(this.correctAnswers, this.totalQuestions);

  @override
  List<Object> get props => [correctAnswers, totalQuestions];
}
