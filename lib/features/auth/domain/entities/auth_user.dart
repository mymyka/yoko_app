import 'package:equatable/equatable.dart';
import 'package:yoko_app/features/auth/domain/entities/entities.dart';

class AuthUserEntity extends Equatable {
  final UserEntity user;
  final String token;

  const AuthUserEntity({
    required this.user,
    required this.token,
  });

  @override
  List<Object?> get props => [user, token];
}
