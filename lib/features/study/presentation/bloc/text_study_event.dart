part of 'text_study_bloc.dart';

sealed class TextStudyEvent extends Equatable {
  const TextStudyEvent();

  @override
  List<Object> get props => [];
}

final class GetTextStudyEvent extends TextStudyEvent {
  final GetTextStudyParams params;

  const GetTextStudyEvent(this.params);

  @override
  List<Object> get props => [params];
}
