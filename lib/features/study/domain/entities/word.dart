import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';

part 'word.g.dart';

@JsonSerializable()
class WordEntity extends Equatable {
  final int id;
  final String word;
  final String translationUk;

  const WordEntity({
    required this.word,
    required this.translationUk,
    required this.id,
  });

  @override
  List<Object?> get props => [id, word, translationUk];

  factory WordEntity.fromJson(Map<String, dynamic> json) =>
      _$WordEntityFromJson(json);
}
