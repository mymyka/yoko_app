import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:yoko_app/core/interceptors/auth_interceptor.dart';
import 'package:yoko_app/features/auth/auth.dart';
import 'package:yoko_app/features/home/domain/usecases/fetch_public_collections.dart';
import 'package:yoko_app/features/home/home.dart';
import 'package:yoko_app/features/settings/presentation/bloc/theme_bloc.dart';

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
  sl.registerLazySingleton<AuthBloc>(
    () => AuthBloc(
      loginUserCase: sl(),
      registerUseCase: sl(),
    )..add(AuthCheckLocal()),
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
  sl.registerLazySingleton<HomeCollectionsBloc>(
    () => HomeCollectionsBloc(
      sl(),
    ),
  );

  // Store
  sl.registerLazySingleton<FetchPublicCollectionsUseCase>(
    () => FetchPublicCollectionsUseCase(
      sl(),
    ),
  );

  // Settings
  sl.registerLazySingleton<ThemeBloc>(
    () => ThemeBloc()..add(ThemeLoadFromLocalStorage()),
  );
}
