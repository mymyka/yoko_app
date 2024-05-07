import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:yoko_app/core/usecases/usecase.dart';
import 'package:yoko_app/features/auth/auth.dart';

class LoginUserCase
    extends UseCase<Either<DioException, AuthUserEntity>, LogInParams> {
  final AuthRepository repository;

  LoginUserCase(this.repository);

  @override
  Future<Either<DioException, AuthUserEntity>> call(LogInParams params) async {
    return await repository.logInWithEmailAndPassword(params: params);
  }
}
