import 'package:yoko_app/features/auth/auth.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class UserModel extends UserEntity {
  const UserModel({
    required super.id,
    required super.name,
    required super.surname,
    required super.email,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
