import 'package:json_annotation/json_annotation.dart';

part 'paginatable_response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class PaginatableResponse<T> {
  final T data;
  final int currentPage;
  final int lastPage;
  final int size;

  PaginatableResponse({
    required this.data,
    required this.currentPage,
    required this.lastPage,
    required this.size,
  });

  factory PaginatableResponse.fromJson(
          Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$PaginatableResponseFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) =>
      _$PaginatableResponseToJson(this, toJsonT);
}
