import 'package:dio/dio.dart';
import 'package:retrofit/dio.dart';
import 'package:retrofit/http.dart';
import 'package:yoko_app/features/auth/auth.dart';
import 'package:yoko_app/utils/utils.dart';

part 'auth_remote_datasource.g.dart';

@RestApi(baseUrl: apiUrl)
abstract class AuthRemoteDataSource {
  factory AuthRemoteDataSource(Dio dio) = _AuthRemoteDataSource;

  @POST('/auth/login')
  Future<HttpResponse<AuthUserModel>> logInWithEmailAndPassword({
    @Field('email') required String email,
    @Field('password') required String password,
  });

  @POST('/auth/register')
  Future<HttpResponse<AuthUserModel>> registerWithEmailAndPassword({
    @Field('name') required String name,
    @Field('surname') required String surname,
    @Field('email') required String email,
    @Field('password') required String password,
  });
}
