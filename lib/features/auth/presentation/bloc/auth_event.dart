part of 'auth_bloc.dart';

sealed class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}

class AuthCheckLocal extends AuthEvent {}

class AuthLogin extends AuthEvent {
  final LogInParams params;

  const AuthLogin({
    required this.params,
  });

  @override
  List<Object> get props => [params];
}

class AuthRegister extends AuthEvent {
  final RegisterParams params;

  const AuthRegister({
    required this.params,
  });

  @override
  List<Object> get props => [params];
}

class AuthLogout extends AuthEvent {}
