import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class UserEntity extends Equatable {
  final int id;
  final String name;
  final String surname;
  final String email;

  const UserEntity({
    required this.id,
    required this.name,
    required this.surname,
    required this.email,
  });

  @override
  List<Object?> get props => [id, name, surname, email];

  factory UserEntity.fromJson(Map<String, dynamic> json) =>
      _$UserEntityFromJson(json);

  Map<String, dynamic> toJson() => _$UserEntityToJson(this);
}
