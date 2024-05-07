import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:yoko_app/core/usecases/usecase.dart';
import 'package:yoko_app/features/auth/auth.dart';

class RegisterUseCase
    extends UseCase<Either<DioException, AuthUserEntity>, RegisterParams> {
  final AuthRepository repository;

  RegisterUseCase(this.repository);

  @override
  Future<Either<DioException, AuthUserEntity>> call(
    RegisterParams params,
  ) async {
    return await repository.registerWithEmailAndPassword(params: params);
  }
}
