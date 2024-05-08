import 'package:equatable/equatable.dart';

class FetchHomeCollectionByIdParams extends Equatable {
  final int id;

  const FetchHomeCollectionByIdParams({required this.id});

  @override
  List<Object?> get props => [id];
}
