import 'package:json_annotation/json_annotation.dart';
import 'package:yoko_app/features/study/study.dart';

part 'word.g.dart';

@JsonSerializable()
class WordModel extends WordEntity {
  const WordModel({
    required super.id,
    required super.word,
    required super.translationUk,
  });

  factory WordModel.fromJson(Map<String, dynamic> json) =>
      _$WordModelFromJson(json);
}
