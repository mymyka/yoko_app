import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:yoko_app/features/general/general.dart';
import 'package:yoko_app/features/home/home.dart';

class HomeCollectionRepositoryImpl extends HomeCollectionsRepository {
  final HomeCollectionsRemoteDataSource remoteDataSource;

  HomeCollectionRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<DioException, List<CollectionModel>>> fetchHomeCollections({
    required FetchHomeCollectionsParams params,
  }) async {
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
  }
}
