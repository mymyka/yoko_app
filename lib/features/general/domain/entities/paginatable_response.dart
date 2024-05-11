import 'package:json_annotation/json_annotation.dart';

part 'paginatable_response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class PaginatableResponseEntity<T> {
  final T data;
  final int currentPage;
  final int lastPage;
  final int size;

  PaginatableResponseEntity({
    required this.data,
    required this.currentPage,
    required this.lastPage,
    required this.size,
  });

  factory PaginatableResponseEntity.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$PaginatableResponseEntityFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Object? Function(T value) toJsonT) =>
      _$PaginatableResponseEntityToJson(this, toJsonT);
}
