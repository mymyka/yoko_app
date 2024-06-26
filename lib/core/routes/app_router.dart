import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:yoko_app/features/auth/auth.dart';
import 'package:yoko_app/features/store/store.dart';
import 'package:yoko_app/features/home/home.dart';
import 'package:yoko_app/features/settings/settings.dart';
import 'package:yoko_app/features/collections/collections.dart';
import 'package:yoko_app/features/general/general.dart';
import 'package:yoko_app/features/study/study.dart';

class AppRouter {
  const AppRouter._();

  static const String initialPage = '/authGuard';

  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final _homeNavigatorKey = GlobalKey<NavigatorState>();
  static final _settingsNavigatorKey = GlobalKey<NavigatorState>();
  static final _storeNavigatorKey = GlobalKey<NavigatorState>();

  static final router = GoRouter(
    initialLocation: initialPage,
    debugLogDiagnostics: true,
    navigatorKey: _rootNavigatorKey,
    routes: [
      StatefulShellRoute.indexedStack(
        parentNavigatorKey: _rootNavigatorKey,
        builder: (context, state, navigationShell) {
          return ShellWrapper(
            navigationShell: navigationShell,
          );
        },
        branches: <StatefulShellBranch>[
          StatefulShellBranch(
            navigatorKey: _storeNavigatorKey,
            routes: <RouteBase>[
              GoRoute(
                path: "/store",
                name: "Store",
                builder: (BuildContext context, GoRouterState state) =>
                    const StoreCollectionsPage(),
                routes: [
                  GoRoute(
                    path: "collection/:id",
                    name: 'Store Collection Page',
                    builder: (context, state) {
                      final id = int.parse(state.pathParameters['id']!);
                      const parentRoute = 'store';
                      return CollectionPage(id: id, parentRoute: parentRoute);
                    },
                    routes: [
                      GoRoute(
                        path: 'study',
                        name: 'Store study Options Page',
                        builder: (context, state) {
                          final collectionId =
                              int.parse(state.pathParameters['id']!);
                          const parentRoute = 'store';
                          return StudyOptionsPage(
                              collectionId: collectionId,
                              parentRoute: parentRoute);
                        },
                        routes: [
                          GoRoute(
                            path: 'quiz',
                            name: 'Store Quiz Page',
                            builder: (context, state) {
                              final collectionId =
                                  int.parse(state.pathParameters['id']!);
                              return QuizPage(collectionId: collectionId);
                            },
                          ),
                          GoRoute(
                            path: 'text',
                            name: 'Store Text Study Page',
                            builder: (context, state) {
                              final collectionId =
                                  int.parse(state.pathParameters['id']!);
                              return TextStudyProvider(
                                collectionId: collectionId,
                                child:
                                    TextStudyPage(collectionId: collectionId),
                              );
                            },
                          ),
                          GoRoute(
                            path: 'chat',
                            name: 'Store Chat Study Page',
                            builder: (context, state) {
                              final collectionId =
                                  int.parse(state.pathParameters['id']!);
                              return ChatPage(collectionId: collectionId);
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),

          /// Brach Home
          StatefulShellBranch(
            navigatorKey: _homeNavigatorKey,
            routes: <RouteBase>[
              GoRoute(
                path: "/home",
                name: "Home",
                builder: (BuildContext context, GoRouterState state) =>
                    const HomeCollectionsPage(),
                routes: [
                  GoRoute(
                    path: "collection/:id",
                    name: 'Home Collection Page',
                    builder: (context, state) {
                      final id = int.parse(state.pathParameters['id']!);
                      const parentRoute = 'home';
                      return CollectionPage(id: id, parentRoute: parentRoute);
                    },
                    routes: [
                      GoRoute(
                        path: 'study',
                        name: 'Home Study Options Page',
                        builder: (context, state) {
                          final collectionId =
                              int.parse(state.pathParameters['id']!);
                          const parentRoute = 'home';
                          return StudyOptionsPage(
                              collectionId: collectionId,
                              parentRoute: parentRoute);
                        },
                        routes: [
                          GoRoute(
                            path: 'quiz',
                            name: 'Home Quiz Page',
                            builder: (context, state) {
                              final collectionId =
                                  int.parse(state.pathParameters['id']!);
                              return QuizPage(collectionId: collectionId);
                            },
                          ),
                          GoRoute(
                            path: 'text',
                            name: 'Home Text Study Page',
                            builder: (context, state) {
                              final collectionId =
                                  int.parse(state.pathParameters['id']!);
                              return TextStudyProvider(
                                collectionId: collectionId,
                                child:
                                    TextStudyPage(collectionId: collectionId),
                              );
                            },
                          ),
                          GoRoute(
                            path: 'chat',
                            name: 'Home Chat Study Page',
                            builder: (context, state) {
                              final collectionId =
                                  int.parse(state.pathParameters['id']!);
                              return ChatPage(collectionId: collectionId);
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                  GoRoute(
                    path: 'collection/create/page',
                    name: 'Create Collection Page',
                    builder: (context, state) => const CreateCollectionPage(),
                  )
                ],
              ),
            ],
          ),

          /// Brach Setting
          StatefulShellBranch(
            navigatorKey: _settingsNavigatorKey,
            routes: <RouteBase>[
              GoRoute(
                path: "/settings",
                name: "Settings",
                builder: (BuildContext context, GoRouterState state) =>
                    const SettingsPage(),
              ),
            ],
          ),
        ],
      ),
      GoRoute(
        path: '/authGuard',
        redirect: (context, state) async {
          var authState = await context.read<AuthBloc>().stream.firstWhere(
                (element) =>
                    (element is! AuthInitial) & (element is! AuthLoading),
              );

          if (authState is AuthSuccess) {
            return '/home';
          }

          return '/welcome';
        },
        builder: (context, state) => const WelcomePage(),
      ),
      GoRoute(
        path: '/welcome',
        builder: (context, state) => const WelcomePage(),
      ),
      GoRoute(
        path: '/login',
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: '/register',
        builder: (context, state) => const RegisterPage(),
      ),
    ],
  );
}
