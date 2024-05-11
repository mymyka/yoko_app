import 'package:json_annotation/json_annotation.dart';
import 'package:yoko_app/features/collections/collections.dart';

part 'collection.g.dart';

@JsonSerializable()
class CollectionModel extends CollectionEntity {
  CollectionModel({
    required super.id,
    required super.name,
    required super.status,
    required super.posterUrl,
    required super.bannerUrl,
    required super.wordsCount,
    required super.wordsLearned,
    required super.isStarted,
  });

  factory CollectionModel.fromJson(Map<String, dynamic> json) =>
      _$CollectionModelFromJson(json);
}
