import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:yoko_app/core/usecases/usecase.dart';
import 'package:yoko_app/features/general/domain/entities/collection.dart';
import 'package:yoko_app/features/home/domain/entities/fetch_home_collections_params.dart';
import 'package:yoko_app/features/home/domain/repositories/home_collections_repository.dart';

class FetchHomeCollectionsUseCase extends UseCase<
    Either<DioException, List<CollectionEntity>>, FetchHomeCollectionsParams> {
  final HomeCollectionsRepository repository;

  FetchHomeCollectionsUseCase(this.repository);

  @override
  Future<Either<DioException, List<CollectionEntity>>> call(
      FetchHomeCollectionsParams params) {
    return repository.fetchHomeCollections(
      params: params,
    );
  }
}
