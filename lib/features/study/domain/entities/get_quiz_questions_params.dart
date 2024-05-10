import 'package:equatable/equatable.dart';

class GetQuizQuestionsParams extends Equatable {
  final int id;

  const GetQuizQuestionsParams({required this.id});

  @override
  List<Object> get props => [id];
}
