import 'package:equatable/equatable.dart';

class GetTextStudyParams extends Equatable {
  final int collectionId;

  const GetTextStudyParams({
    required this.collectionId,
  });

  @override
  List<Object?> get props => [collectionId];
}
