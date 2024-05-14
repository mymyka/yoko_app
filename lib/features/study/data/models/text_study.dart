import 'package:json_annotation/json_annotation.dart';
import 'package:yoko_app/features/study/study.dart';

part 'text_study.g.dart';

@JsonSerializable()
class TextStudyModel extends TextStudyEntity {
  const TextStudyModel({
    required super.text,
    required super.words,
  });

  factory TextStudyModel.fromJson(Map<String, dynamic> json) =>
      _$TextStudyModelFromJson(json);
}
