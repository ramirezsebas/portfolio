import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:my_portfolio/extensions/extensions.dart';
import 'package:my_portfolio/helpers/helpers.dart';
import 'package:my_portfolio/providers/providers.dart';
import 'package:my_portfolio/widgets/widgets.dart';

class PageLayout extends ConsumerWidget {
  PageLayout({
    super.key,
    required this.body,
  });

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final Widget body;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isMobileSize = MediaQuery.of(context).isMobileSize;

    return Scaffold(
      key: scaffoldKey,
      endDrawer: MyDrawer(
        themeIcon: ref.watch(themeModeNotifierProvider) == ThemeMode.light
            ? Icons.light_mode_outlined
            : Icons.dark_mode_outlined,
        onToggleTheme: () =>
            ref.read(themeModeNotifierProvider.notifier).toggle(),
      ),
      body: Column(
        children: [
          NavBar(
            leading: [
              if (isMobileSize) ...[
                IconButton(
                  onPressed: () => GoRouter.of(context).goNamed("home"),
                  icon: const Icon(Icons.code_outlined),
                ),
              ] else ...[
                TextButton.icon(
                  onPressed: () => GoRouter.of(context).goNamed("home"),
                  icon: const Icon(Icons.code_outlined),
                  label: const Text("Matias Ramirez"),
                )
              ]
            ],
            title: isMobileSize
                ? [const Text("Matias Ramirez")]
                : navItems
                    .map(
                      (e) => TextButton.icon(
                        onPressed: () =>
                            GoRouter.of(context).goNamed(e.pathName),
                        icon: e.icon,
                        label: Text(e.label),
                      ),
                    )
                    .toList(),
            trailing: [
              if (isMobileSize) ...[
                IconButton(
                  icon: const Icon(Icons.menu_outlined),
                  onPressed: () => scaffoldKey.currentState?.openEndDrawer(),
                ),
              ] else ...[
                IconButton(
                  icon: const Icon(Icons.search_outlined),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(
                    ref.watch(themeModeNotifierProvider) == ThemeMode.light
                        ? Icons.light_mode_outlined
                        : Icons.dark_mode_outlined,
                  ),
                  onPressed: () =>
                      ref.read(themeModeNotifierProvider.notifier).toggle(),
                ),
              ]
            ],
            height: 45,
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
          ),
          const Divider(),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 30,
              ),
              child: body,
            ),
          ),
        ],
      ),
    );
  }
}
