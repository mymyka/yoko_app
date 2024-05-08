import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:yoko_app/features/general/general.dart';
import 'package:yoko_app/features/home/home.dart';

abstract class HomeCollectionsRepository {
  Future<Either<DioException, List<CollectionEntity>>> fetchHomeCollections({
    required FetchHomeCollectionsParams params,
  });

  Future<Either<DioException, CollectionEntity>> fetchHomeCollectionById({
    required FetchHomeCollectionByIdParams params,
  });
}
