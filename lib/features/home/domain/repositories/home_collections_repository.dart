import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:yoko_app/features/general/domain/entities/collection.dart';
import 'package:yoko_app/features/home/domain/entities/fetch_home_collections_params.dart';

abstract class HomeCollectionsRepository {
  Future<Either<DioException, List<CollectionEntity>>> fetchHomeCollections({
    required FetchHomeCollectionsParams params,
  });
}
