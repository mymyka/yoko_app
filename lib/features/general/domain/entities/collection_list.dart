import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:yoko_app/features/general/domain/entities/collection.dart';

part 'collection_list.g.dart';

@JsonSerializable()
class CollectionListEntity extends Equatable {
  final List<CollectionEntity> collections;

  const CollectionListEntity({required this.collections});

  @override
  List<Object?> get props => [collections];

  factory CollectionListEntity.fromJson(Map<String, dynamic> json) =>
      _$CollectionListEntityFromJson(json);

  Map<String, dynamic> toJson() => _$CollectionListEntityToJson(this);
}
