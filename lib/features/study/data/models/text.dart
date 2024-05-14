import 'package:json_annotation/json_annotation.dart';
import 'package:yoko_app/features/study/study.dart';

part 'text.g.dart';

@JsonSerializable()
class TextModel extends TextEntity {
  const TextModel({
    required super.text,
    required super.translationUk,
    required super.id,
  });

  factory TextModel.fromJson(Map<String, dynamic> json) =>
      _$TextModelFromJson(json);
}
