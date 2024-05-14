import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:yoko_app/features/study/study.dart';

abstract class TextRepository {
  Future<Either<DioException, TextStudyEntity>> getTextStudy({
    required GetTextStudyParams params,
  });
}
