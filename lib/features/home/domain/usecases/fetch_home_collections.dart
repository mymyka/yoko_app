import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:yoko_app/core/core.dart';
import 'package:yoko_app/features/general/general.dart';
import 'package:yoko_app/features/home/home.dart';

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
