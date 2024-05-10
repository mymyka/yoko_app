import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'quiz_answer.g.dart';

@JsonSerializable()
class QuizAnswerEntity extends Equatable {
  final int id;
  final String translation;
  final bool isAnswer;

  const QuizAnswerEntity({
    required this.id,
    required this.translation,
    required this.isAnswer,
  });

  @override
  List<Object?> get props => [id, translation, isAnswer];

  factory QuizAnswerEntity.fromJson(Map<String, dynamic> json) =>
      _$QuizAnswerEntityFromJson(json);
}
