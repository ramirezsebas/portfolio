import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:my_portfolio/layouts/layouts.dart';
import 'package:my_portfolio/pages/education_page.dart';
import 'package:my_portfolio/pages/experience_page.dart';
import 'package:my_portfolio/pages/home_page.dart';
import 'package:my_portfolio/pages/projects_page.dart';
import 'package:my_portfolio/providers/providers.dart';
import 'package:my_portfolio/themes/themes.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

void main() => runApp(ProviderScope(child: MyApp()));

class MyApp extends ConsumerWidget {
  MyApp({super.key});

  final _router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: '/',
    routes: [
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (context, state, child) => PageLayout(body: child),
        routes: [
          GoRoute(
            path: '/',
            name: 'home',
            builder: (context, state) => const HomePage(),
          ),
          GoRoute(
            path: '/experience',
            name: 'experience',
            builder: (context, state) => const ExperiencePage(),
          ),
          GoRoute(
            path: '/education',
            name: 'education',
            builder: (context, state) => const EducationPage(),
          ),
          GoRoute(
            path: '/projects',
            name: 'projects',
            builder: (context, state) => const ProjectsPage(),
          ),
        ],
      ),
    ],
  );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      routerConfig: _router,
      themeMode: ref.watch(themeModeNotifierProvider) == ThemeMode.light
          ? ThemeMode.light
          : ThemeMode.dark,
      theme: lightTheme,
      darkTheme: darkTheme,
      debugShowCheckedModeBanner: false,
      title: 'Material App',
    );
  }
}
