part of 'text_study_bloc.dart';

sealed class TextStudyState extends Equatable {
  const TextStudyState();

  @override
  List<Object> get props => [];
}

final class TextStudyInitial extends TextStudyState {}

final class TextStudyLoading extends TextStudyState {}

final class TextStudyLoaded extends TextStudyState {
  final TextStudyEntity textStudy;

  const TextStudyLoaded(this.textStudy);

  @override
  List<Object> get props => [textStudy];
}

final class TextStudyError extends TextStudyState {
  final String message;

  const TextStudyError(this.message);

  @override
  List<Object> get props => [message];
}
