import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:yoko_app/features/study/study.dart';

class TextRepositoryImpl implements TextRepository {
  final TextRemoteDataSource remoteDataSource;

  TextRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<DioException, TextStudyEntity>> getTextStudy({
    required GetTextStudyParams params,
  }) async {
    try {
      final result = await remoteDataSource.getTextStudy(
        id: params.collectionId,
      );

      if (result.response.statusCode == HttpStatus.ok) {
        return Right(result.data.data);
      }

      return Left(
        DioException(
          requestOptions: result.response.requestOptions,
          response: result.response,
          error: result.response.statusMessage,
          type: DioExceptionType.badResponse,
        ),
      );
    } on DioException catch (e) {
      return Left(e);
    } catch (e) {
      return Left(
        DioException(
          requestOptions: RequestOptions(path: ''),
          response: Response(
            requestOptions: RequestOptions(path: ''),
            statusCode: HttpStatus.internalServerError,
            statusMessage: 'Internal Server Error',
          ),
          error: 'Internal Server Error',
          type: DioExceptionType.unknown,
        ),
      );
    }
  }
}
