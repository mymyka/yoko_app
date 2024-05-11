import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:yoko_app/features/collections/collections.dart';
import 'package:yoko_app/features/general/domain/entities/paginatable_response.dart';

class CollectionRepositoryImpl extends CollectionsRepository {
  final CollectionsRemoteDataSource remoteDataSource;

  CollectionRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<DioException, PaginatableResponseEntity<List<CollectionModel>>>>
      getHomeCollections({
    required GetCollectionsParams params,
  }) async {
    try {
      final result = await remoteDataSource.getHomeCollections(
        page: params.page,
        pageSize: params.pageSize,
        sort: params.sort,
        orderBy: params.orderBy,
        filterParam: params.filterParam,
        filterValue: params.filterValue,
        filterOperator: params.filterOperator,
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

  @override
  Future<Either<DioException, CollectionModel>> getHomeCollectionById({
    required GetCollectionByIdParams params,
  }) async {
    try {
      final result = await remoteDataSource.getCollectionById(
        id: params.id,
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

  @override
  Future<Either<DioException, PaginatableResponseEntity<List<CollectionModel>>>>
      getStoreCollections({
    required GetCollectionsParams params,
  }) async {
    try {
      final result = await remoteDataSource.getStoreCollections(
        page: params.page,
        pageSize: params.pageSize,
        sort: params.sort,
        orderBy: params.orderBy,
        filterParam: params.filterParam,
        filterValue: params.filterValue,
        filterOperator: params.filterOperator,
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

  @override
  Future<Either<DioException, CollectionModel>> addCollectionToUser({
    required AddCollectionToUserParams params,
  }) async {
    try {
      final result = await remoteDataSource.addCollectionToUser(
        id: params.id,
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
