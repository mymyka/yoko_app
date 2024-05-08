import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:yoko_app/core/core.dart';
import 'package:yoko_app/features/general/general.dart';
import 'package:yoko_app/features/home/home.dart';

class FetchHomeCollectionByIdUseCase extends UseCase<
    Either<DioException, CollectionEntity>, FetchHomeCollectionByIdParams> {
  final HomeCollectionsRepository repository;

  FetchHomeCollectionByIdUseCase(this.repository);

  @override
  Future<Either<DioException, CollectionEntity>> call(
    FetchHomeCollectionByIdParams params,
  ) async {
    return await repository.fetchHomeCollectionById(params: params);
  }
}
