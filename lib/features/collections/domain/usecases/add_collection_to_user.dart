import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:yoko_app/core/core.dart';
import 'package:yoko_app/features/collections/collections.dart';

class AddCollectionToUserUseCase
    implements UseCase<void, AddCollectionToUserParams> {
  final CollectionsRepository collectionRepository;

  AddCollectionToUserUseCase(this.collectionRepository);

  @override
  Future<Either<DioException, CollectionEntity>> call(
      AddCollectionToUserParams params) async {
    return await collectionRepository.addCollectionToUser(params: params);
  }
}
