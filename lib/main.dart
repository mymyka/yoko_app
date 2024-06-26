import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yoko_app/core/routes/app_router.dart';
import 'package:yoko_app/features/auth/auth.dart';
import 'package:yoko_app/features/settings/settings.dart';
import 'package:yoko_app/gen/strings.g.dart';
import 'package:yoko_app/injection_container.dart';
import 'package:yoko_app/utils/utils.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  await MainBoxMixin.initHive('main_box');
  WidgetsFlutterBinding.ensureInitialized();
  LocaleSettings.useDeviceLocale();
  await initializeDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
        return TranslationProvider(
          child: MaterialApp.router(
            debugShowCheckedModeBanner: false,
            routerConfig: AppRouter.router,
            title: 'Flutter Demo',
            theme: materialTheme.light(),
            darkTheme: materialTheme.dark(),
            themeMode: state,
          ),
        );
      },
    );
  }
}
