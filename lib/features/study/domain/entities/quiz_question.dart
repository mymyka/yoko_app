import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:yoko_app/features/study/study.dart';

part 'quiz_question.g.dart';

@JsonSerializable()
class QuizQuestionEntity extends Equatable {
  final int id;
  final String word;
  final List<QuizAnswerEntity> answers;

  const QuizQuestionEntity({
    required this.id,
    required this.word,
    required this.answers,
  });

  @override
  List<Object?> get props => [id, word, answers];

  factory QuizQuestionEntity.fromJson(Map<String, dynamic> json) =>
      _$QuizQuestionEntityFromJson(json);
}
