import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:yoko_app/features/auth/auth.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  var dio = Dio();
  dio.interceptors.add(LogInterceptor(responseBody: true, requestBody: true));

  sl.registerLazySingleton<Dio>(() => dio);

  // Auth
  sl.registerLazySingleton<AuthRemoteDataSource>(
    () => AuthRemoteDataSource(
      sl(),
    ),
  );
  sl.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(
      sl(),
    ),
  );
  sl.registerLazySingleton<RegisterUseCase>(
    () => RegisterUseCase(
      sl(),
    ),
  );
  sl.registerLazySingleton<LoginUseCase>(
    () => LoginUseCase(
      sl(),
    ),
  );
}
