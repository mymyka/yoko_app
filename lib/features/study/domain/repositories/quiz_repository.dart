import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:yoko_app/features/study/domain/entities/entities.dart';
import 'package:yoko_app/features/study/study.dart';

abstract class QuizRepository {
  Future<Either<DioException, List<QuizQuestionEntity>>> getQuizQuestions({
    required GetQuizQuestionsParams params,
  });
}
