import 'package:dio/dio.dart';
import 'package:yoko_app/features/auth/auth.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepository {
  Future<Either<DioException, AuthUserEntity>> logInWithEmailAndPassword({
    required LogInParams params,
  });
  Future<Either<DioException, AuthUserEntity>> registerWithEmailAndPassword({
    required RegisterParams params,
  });
  // Future<Either<DioException, AuthUserEntity>> signOut();
  // Future<bool> isSignedIn();
  // Future<String> getUser();
}
