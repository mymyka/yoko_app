import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:yoko_app/core/interceptors/auth_interceptor.dart';
import 'package:yoko_app/features/auth/auth.dart';
import 'package:yoko_app/features/home/data/datasources/home_collections_remote_datasource.dart';
import 'package:yoko_app/features/home/data/repositories/home_collections_repository_impl.dart';
import 'package:yoko_app/features/home/domain/repositories/home_collections_repository.dart';
import 'package:yoko_app/features/home/domain/usecases/fetch_home_collections.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  var dio = Dio();

  dio.interceptors.add(AuthInterceptor());
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

  // Home
  sl.registerLazySingleton<HomeCollectionsRemoteDataSource>(
    () => HomeCollectionsRemoteDataSource(
      sl(),
    ),
  );
  sl.registerLazySingleton<HomeCollectionsRepository>(
    () => HomeCollectionRepositoryImpl(
      sl(),
    ),
  );
  sl.registerLazySingleton<FetchHomeCollectionsUseCase>(
    () => FetchHomeCollectionsUseCase(
      sl(),
    ),
  );
}
