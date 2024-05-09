import 'package:json_annotation/json_annotation.dart';

part 'collection.g.dart';

@JsonSerializable()
class CollectionEntity {
  final int id;
  final String name;
  final String status;
  final int textId;
  final String posterUrl;
  final String bannerUrl;
  final int wordsCount;
  final int wordsLearned;
  final bool isStared;

  CollectionEntity({
    required this.id,
    required this.name,
    required this.status,
    required this.textId,
    required this.posterUrl,
    required this.bannerUrl,
    required this.wordsCount,
    required this.wordsLearned,
    required this.isStared,
  });

  factory CollectionEntity.fromJson(Map<String, dynamic> json) =>
      _$CollectionEntityFromJson(json);

  Map<String, dynamic> toJson() => _$CollectionEntityToJson(this);
}
