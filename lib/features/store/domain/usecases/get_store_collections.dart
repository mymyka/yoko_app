import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:yoko_app/core/core.dart';
import 'package:yoko_app/features/collections/collections.dart';
import 'package:yoko_app/features/general/domain/entities/paginatable_response.dart';

class GetStoreCollectionsUseCase extends UseCase<
    Either<DioException, PaginatableResponseEntity<List<CollectionEntity>>>,
    GetCollectionsParams> {
  final CollectionsRepository repository;

  GetStoreCollectionsUseCase(this.repository);

  @override
  Future<
      Either<DioException,
          PaginatableResponseEntity<List<CollectionEntity>>>> call(
    GetCollectionsParams params,
  ) {
    return repository.getStoreCollections(
      params: params,
    );
  }
}
