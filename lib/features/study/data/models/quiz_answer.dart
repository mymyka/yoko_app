import 'package:json_annotation/json_annotation.dart';
import 'package:yoko_app/features/study/study.dart';

part 'quiz_answer.g.dart';

@JsonSerializable()
class QuizAnswerModel extends QuizAnswerEntity {
  const QuizAnswerModel({
    required super.id,
    required super.translation,
    required super.isAnswer,
  });

  factory QuizAnswerModel.fromJson(Map<String, dynamic> json) =>
      _$QuizAnswerModelFromJson(json);
}
