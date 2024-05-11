import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:yoko_app/core/core.dart';
import 'package:yoko_app/features/auth/auth.dart';
import 'package:yoko_app/features/store/store.dart';
import 'package:yoko_app/features/home/home.dart';
import 'package:yoko_app/features/settings/settings.dart';
import 'package:yoko_app/features/collections/collections.dart';
import 'package:yoko_app/features/study/study.dart';

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
  sl.registerLazySingleton<CollectionsRemoteDataSource>(
    () => CollectionsRemoteDataSource(
      sl(),
    ),
  );
  sl.registerLazySingleton<CollectionsRepository>(
    () => CollectionRepositoryImpl(
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
  sl.registerLazySingleton<GetStoreCollectionsUseCase>(
    () => GetStoreCollectionsUseCase(
      sl(),
    ),
  );

  // Collections
  sl.registerLazySingleton<AddCollectionToUserUseCase>(
    () => AddCollectionToUserUseCase(
      sl(),
    ),
  );
  sl.registerLazySingleton<GetCollectionByIdUseCase>(
    () => GetCollectionByIdUseCase(
      sl(),
    ),
  );
  sl.registerLazySingleton<CreateCollectionUseCase>(
    () => CreateCollectionUseCase(
      sl(),
    ),
  );

  // Study

  // Quiz
  sl.registerLazySingleton<QuizRemoteDataSource>(
    () => QuizRemoteDataSource(
      sl(),
    ),
  );
  sl.registerLazySingleton<QuizRepository>(
    () => QuizRepositoryImpl(
      sl(),
    ),
  );
  sl.registerLazySingleton<GetQuizQuestionsUseCase>(
    () => GetQuizQuestionsUseCase(
      sl(),
    ),
  );

  // Settings
  sl.registerLazySingleton<ThemeBloc>(
    () => ThemeBloc()..add(ThemeLoadFromLocalStorage()),
  );
}
