import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'text.g.dart';

@JsonSerializable()
class TextEntity extends Equatable {
  final int id;
  final String text;
  final String translationUk;

  const TextEntity({
    required this.text,
    required this.translationUk,
    required this.id,
  });

  @override
  List<Object?> get props => [id, text, translationUk];

  factory TextEntity.fromJson(Map<String, dynamic> json) =>
      _$TextEntityFromJson(json);
}
