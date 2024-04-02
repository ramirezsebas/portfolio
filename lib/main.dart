import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:my_portfolio/layouts/layouts.dart';
import 'package:my_portfolio/pages/education_page.dart';
import 'package:my_portfolio/pages/experience_page.dart';
import 'package:my_portfolio/pages/home_page.dart';
import 'package:my_portfolio/pages/projects_page.dart';
import 'package:my_portfolio/pages/resume_page.dart';
import 'package:my_portfolio/pages/search_page.dart';
import 'package:my_portfolio/pages/skills_page.dart';
import 'package:my_portfolio/providers/providers.dart';
import 'package:my_portfolio/themes/themes.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
            pageBuilder: (context, state) {
              return CustomTransitionPage(
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) {
                  return FadeTransition(opacity: animation, child: child);
                },
                key: const ValueKey('home'),
                child: const HomePage(),
              );
            },
          ),
          GoRoute(
            path: '/skills',
            name: 'skills',
            pageBuilder: (context, state) {
              return CustomTransitionPage(
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) {
                  return FadeTransition(opacity: animation, child: child);
                },
                key: const ValueKey('skills'),
                child: const SkillsPage(),
              );
            },
          ),
          GoRoute(
            path: '/experience',
            name: 'experience',
            pageBuilder: (context, state) {
              return CustomTransitionPage(
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) {
                  return FadeTransition(opacity: animation, child: child);
                },
                key: const ValueKey('experience'),
                child: const ExperiencePage(),
              );
            },
          ),
          GoRoute(
            path: '/education',
            name: 'education',
            pageBuilder: (context, state) {
              return CustomTransitionPage(
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) {
                  return FadeTransition(opacity: animation, child: child);
                },
                key: const ValueKey('education'),
                child: const EducationPage(),
              );
            },
          ),
          GoRoute(
            path: '/projects',
            name: 'projects',
            pageBuilder: (context, state) {
              return CustomTransitionPage(
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) {
                  return FadeTransition(opacity: animation, child: child);
                },
                key: const ValueKey('projects'),
                child: const ProjectsPage(),
              );
            },
          ),
          GoRoute(
            path: '/resume',
            name: 'resume',
            pageBuilder: (context, state) {
              return CustomTransitionPage(
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) {
                  return FadeTransition(opacity: animation, child: child);
                },
                key: const ValueKey('resume'),
                child: const ResumePage(),
              );
            },
          ),
          GoRoute(
            path: '/search',
            name: 'search',
            pageBuilder: (context, state) {
              return CustomTransitionPage(
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) {
                  return FadeTransition(opacity: animation, child: child);
                },
                key: const ValueKey('search'),
                child: SearchPage(),
              );
            },
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
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'),
        Locale('es'),
      ],
      theme: lightTheme,
      darkTheme: darkTheme,
      debugShowCheckedModeBanner: false,
      title: 'My Portfolio',
    );
  }
}
