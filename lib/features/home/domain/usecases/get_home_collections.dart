import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:yoko_app/core/core.dart';
import 'package:yoko_app/features/collections/collections.dart';

class FetchHomeCollectionsUseCase extends UseCase<
    Either<DioException, List<CollectionEntity>>, GetCollectionsParams> {
  final CollectionsRepository repository;

  FetchHomeCollectionsUseCase(this.repository);

  @override
  Future<Either<DioException, List<CollectionEntity>>> call(
      GetCollectionsParams params) {
    return repository.getHomeCollections(
      params: params,
    );
  }
}
