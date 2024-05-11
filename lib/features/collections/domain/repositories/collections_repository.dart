import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:yoko_app/features/collections/collections.dart';
import 'package:yoko_app/features/general/general.dart';

abstract class CollectionsRepository {
  Future<
          Either<DioException,
              PaginatableResponseEntity<List<CollectionEntity>>>>
      getHomeCollections({
    required GetCollectionsParams params,
  });

  Future<Either<DioException, CollectionEntity>> getHomeCollectionById({
    required GetCollectionByIdParams params,
  });

  Future<
          Either<DioException,
              PaginatableResponseEntity<List<CollectionEntity>>>>
      getStoreCollections({
    required GetCollectionsParams params,
  });

  Future<Either<DioException, CollectionEntity>> addCollectionToUser({
    required AddCollectionToUserParams params,
  });

  Future<Either<DioException, CollectionEntity>> createCollection({
    required CreateCollectionParams params,
  });
}
