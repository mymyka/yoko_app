import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:yoko_app/features/study/domain/entities/text.dart';
import 'package:yoko_app/features/study/study.dart';

part 'text_study.g.dart';

@JsonSerializable()
class TextStudyEntity extends Equatable {
  final TextEntity text;
  final List<WordEntity> words;

  const TextStudyEntity({
    required this.text,
    required this.words,
  });

  @override
  List<Object?> get props => [text, words];

  factory TextStudyEntity.fromJson(Map<String, dynamic> json) =>
      _$TextStudyEntityFromJson(json);
}
