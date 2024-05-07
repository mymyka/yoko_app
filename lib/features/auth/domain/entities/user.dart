import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  final String id;
  final String name;
  final String surname;
  final String email;
  final String avatarUrl;

  const UserEntity({
    required this.id,
    required this.name,
    required this.surname,
    required this.email,
    required this.avatarUrl,
  });

  @override
  List<Object?> get props => [id, name, surname, email, avatarUrl];
}
