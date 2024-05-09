import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:yoko_app/features/collections/collections.dart';

abstract class CollectionsRepository {
  Future<Either<DioException, List<CollectionEntity>>> getHomeCollections({
    required GetCollectionsParams params,
  });

  Future<Either<DioException, CollectionEntity>> getHomeCollectionById({
    required GetCollectionByIdParams params,
  });

  Future<Either<DioException, List<CollectionEntity>>> getStoreCollections({
    required GetCollectionsParams params,
  });
}
