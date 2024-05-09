import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:yoko_app/core/core.dart';
import 'package:yoko_app/features/collections/collections.dart';

class GetCollectionByIdUseCase extends UseCase<
    Either<DioException, CollectionEntity>, GetCollectionByIdParams> {
  final CollectionsRepository repository;

  GetCollectionByIdUseCase(this.repository);

  @override
  Future<Either<DioException, CollectionEntity>> call(
    GetCollectionByIdParams params,
  ) async {
    return await repository.getHomeCollectionById(params: params);
  }
}
