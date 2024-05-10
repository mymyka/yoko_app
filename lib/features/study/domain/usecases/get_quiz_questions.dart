import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:yoko_app/core/core.dart';
import 'package:yoko_app/features/study/study.dart';

class GetQuizQuestionsUseCase extends UseCase<
    Either<DioException, List<QuizQuestionEntity>>, GetQuizQuestionsParams> {
  final QuizRepository repository;

  GetQuizQuestionsUseCase(this.repository);

  @override
  Future<Either<DioException, List<QuizQuestionEntity>>> call(
      GetQuizQuestionsParams params) async {
    return await repository.getQuizQuestions(params: params);
  }
}
