import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yoko_app/core/routes/app_router.dart';
import 'package:yoko_app/features/auth/auth.dart';
import 'package:yoko_app/gen/strings.g.dart';
import 'package:yoko_app/injection_container.dart';
import 'package:yoko_app/utils/services/hive/main_box.dart';

void main() async {
  await MainBoxMixin.initHive(
      'yoko_app_new_new_new_new_new_new_new_new_new_new');
  WidgetsFlutterBinding.ensureInitialized();
  LocaleSettings.useDeviceLocale();
  await initializeDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthBloc>(
      create: (context) => AuthBloc(
        loginUserCase: sl(),
        registerUseCase: sl(),
      )..add(AuthCheckLocal()),
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
      ),
    );
  }
}
