import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:yoko_app/features/auth/auth.dart';
import 'package:yoko_app/utils/services/hive/main_box.dart';

class AuthRepositoryImpl extends AuthRepository with MainBoxMixin {
  final AuthRemoteDataSource _remoteDataSource;

  AuthRepositoryImpl(this._remoteDataSource);

  @override
  Future<Either<DioException, AuthUserModel>> logInWithEmailAndPassword({
    required LogInParams params,
  }) async {
    final response = await _remoteDataSource.logInWithEmailAndPassword(
      email: params.email,
      password: params.password,
    );
    if (response.response.statusCode == HttpStatus.ok) {
      addData(MainBoxKeys.isLogin, true);
      addData(MainBoxKeys.token, response.data.token);
      addData(MainBoxKeys.user, response.data.user.toJson());
      return Right(response.data);
    } else {
      return Left(
        DioException(
          requestOptions: response.response.requestOptions,
          response: response.response,
          error: response.response.statusMessage,
          type: DioExceptionType.badResponse,
        ),
      );
    }
  }

  @override
  Future<Either<DioException, AuthUserModel>> registerWithEmailAndPassword({
    required RegisterParams params,
  }) async {
    final response = await _remoteDataSource.registerWithEmailAndPassword(
      name: params.name,
      surname: params.surname,
      email: params.email,
      password: params.password,
    );
    if (response.response.statusCode == HttpStatus.ok) {
      addData(MainBoxKeys.isLogin, true);
      addData(MainBoxKeys.token, response.data.token);
      return Right(response.data);
    } else {
      return Left(
        DioException(
          requestOptions: response.response.requestOptions,
          response: response.response,
          error: response.response.statusMessage,
          type: DioExceptionType.badResponse,
        ),
      );
    }
  }
}
