import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:yoko_app/core/core.dart';
import 'package:yoko_app/features/collections/collections.dart';

class CreateCollectionUseCase extends UseCase<
    Either<DioException, CollectionEntity>, CreateCollectionParams> {
  final CollectionsRepository repository;

  CreateCollectionUseCase(this.repository);

  @override
  Future<Either<DioException, CollectionEntity>> call(
      CreateCollectionParams params) async {
    return repository.createCollection(params: params);
  }
}
