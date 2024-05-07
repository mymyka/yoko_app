import 'package:equatable/equatable.dart';

class RegisterParams extends Equatable {
  final String name;
  final String surname;
  final String email;
  final String password;

  const RegisterParams({
    required this.name,
    required this.surname,
    required this.email,
    required this.password,
  });

  @override
  List<Object?> get props => [name, surname, email, password];
}
