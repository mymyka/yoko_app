import 'package:equatable/equatable.dart';

class GetCollectionByIdParams extends Equatable {
  final int id;

  const GetCollectionByIdParams({required this.id});

  @override
  List<Object?> get props => [id];
}
