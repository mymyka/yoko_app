import 'package:json_annotation/json_annotation.dart';
import 'package:yoko_app/features/study/study.dart';

part 'quiz_question.g.dart';

@JsonSerializable()
class QuizQuestionModel extends QuizQuestionEntity {
  const QuizQuestionModel({
    required super.id,
    required super.word,
    required super.answers,
  });

  factory QuizQuestionModel.fromJson(Map<String, dynamic> json) =>
      _$QuizQuestionModelFromJson(json);
}
