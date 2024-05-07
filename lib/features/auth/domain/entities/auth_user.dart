import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:yoko_app/features/auth/auth.dart';

part 'auth_user.g.dart';

@JsonSerializable()
class AuthUserEntity extends Equatable {
  final UserEntity user;
  final String token;

  const AuthUserEntity({
    required this.user,
    required this.token,
  });

  @override
  List<Object?> get props => [user, token];

  factory AuthUserEntity.fromJson(Map<String, dynamic> json) =>
      _$AuthUserEntityFromJson(json);

  Map<String, dynamic> toJson() => _$AuthUserEntityToJson(this);
}
