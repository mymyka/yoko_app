import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:yoko_app/core/core.dart';
import 'package:yoko_app/features/collections/collections.dart';
import 'package:yoko_app/features/general/domain/entities/paginatable_response.dart';

class FetchHomeCollectionsUseCase extends UseCase<
    Either<DioException, PaginatableResponseEntity<List<CollectionEntity>>>,
    GetCollectionsParams> {
  final CollectionsRepository repository;

  FetchHomeCollectionsUseCase(this.repository);

  @override
  Future<
      Either<DioException,
          PaginatableResponseEntity<List<CollectionEntity>>>> call(
      GetCollectionsParams params) {
    return repository.getHomeCollections(
      params: params,
    );
  }
}
