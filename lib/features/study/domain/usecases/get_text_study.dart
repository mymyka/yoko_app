import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:yoko_app/core/core.dart';
import 'package:yoko_app/features/study/study.dart';

class GetTextStudyUseCase
    extends UseCase<Either<DioException, TextStudyEntity>, GetTextStudyParams> {
  final TextRepository repository;

  GetTextStudyUseCase(this.repository);

  @override
  Future<Either<DioException, TextStudyEntity>> call(
      GetTextStudyParams params) async {
    return await repository.getTextStudy(params: params);
  }
}
