import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yoko_app/core/routes/app_router.dart';
import 'package:yoko_app/features/auth/auth.dart';
import 'package:yoko_app/features/settings/settings.dart';
import 'package:yoko_app/gen/strings.g.dart';
import 'package:yoko_app/injection_container.dart';
import 'package:yoko_app/utils/utils.dart';

void main() async {
  await MainBoxMixin.initHive(
      'yoko_app_new_new_new_new_new_new_new_new_new_new_new_new_new_new_new');
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
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) =>
                sl<ThemeBloc>()..add(ThemeLoadFromLocalStorage())),
        BlocProvider(
            create: (context) => sl<AuthBloc>()..add(AuthCheckLocal())),
      ],
      child: const App(),
    );
  }
}

class App extends StatelessWidget {
  final MaterialTheme materialTheme = const MaterialTheme(TextTheme());

  const App({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeMode>(
      builder: (context, state) {
        return MaterialApp.router(
          routerConfig: AppRouter.router,
          title: 'Flutter Demo',
          theme: materialTheme.light(),
          darkTheme: materialTheme.dark(),
          themeMode: state,
        );
      },
    );
  }
}
