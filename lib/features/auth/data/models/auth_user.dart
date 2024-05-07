import 'package:json_annotation/json_annotation.dart';
import 'package:yoko_app/features/auth/auth.dart';

part 'auth_user.g.dart';

@JsonSerializable()
class AuthUserModel extends AuthUserEntity {
  const AuthUserModel({
    required super.user,
    required super.token,
  });

  factory AuthUserModel.fromJson(Map<String, dynamic> json) =>
      _$AuthUserModelFromJson(json['data']);
}
