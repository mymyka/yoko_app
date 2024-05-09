import 'package:equatable/equatable.dart';

class AddCollectionToUserParams extends Equatable {
  final int id;

  const AddCollectionToUserParams({
    required this.id,
  });

  @override
  List<Object?> get props => [id];
}
