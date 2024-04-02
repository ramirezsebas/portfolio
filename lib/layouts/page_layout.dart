import 'package:flutter/gestures.dart';
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
  final scrollController = ScrollController();
  var paddingHorizontal = 55.0;
  final Widget body;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isMobileSize = MediaQuery.of(context).isMobileSize;
    final isTabletSize = MediaQuery.of(context).isTabletSize;
    final isDesktopSize = MediaQuery.of(context).isDesktopSize;
    List<Widget> title;

    if (isMobileSize) {
      paddingHorizontal = 15.0;
      title = [const Text("Matias Ramirez")];
    } else if (isTabletSize) {
      paddingHorizontal = 35.0;
      title = navItems
          .map(
            (e) => IconButton(
              onPressed: () => GoRouter.of(context).goNamed(e.pathName),
              icon: e.icon,
            ),
          )
          .toList();
    } else if (isDesktopSize) {
      paddingHorizontal = 55.0;
      title = navItems
          .map(
            (e) => TextButton.icon(
              onPressed: () => GoRouter.of(context).goNamed(e.pathName),
              icon: e.icon,
              label: Text(e.label),
            ),
          )
          .toList();
    } else {
      title = [const Text("Matias Ramirez")];
    }

    return Scaffold(
      key: scaffoldKey,
      endDrawer: MyDrawer(
        themeIcon: ref.watch(themeModeNotifierProvider) == ThemeMode.light
            ? Icons.light_mode_outlined
            : Icons.dark_mode_outlined,
        onToggleTheme: ref.read(themeModeNotifierProvider.notifier).toggle,
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
            title: title,
            trailing: [
              if (isMobileSize) ...[
                IconButton(
                  icon: const Icon(Icons.menu_outlined),
                  onPressed: () => scaffoldKey.currentState?.openEndDrawer(),
                ),
              ] else ...[
                IconButton(
                  icon: const Icon(Icons.search_outlined),
                  onPressed: () => GoRouter.of(context).goNamed("search"),
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
            padding: EdgeInsets.symmetric(
              horizontal: paddingHorizontal,
            ),
          ),
          const Divider(),
          Expanded(
            child: SingleChildScrollView(
              controller: scrollController,
              padding: EdgeInsets.symmetric(
                horizontal: paddingHorizontal,
                vertical: 10,
              ),
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                child: body,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// class Body extends StatelessWidget {
//   const Body({
//     super.key,
//     required this.scrollController,
//   });

//   final ScrollController scrollController;

//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     return Column(
//       children: [
//         SizedBox(
//           height: size.height,
//           child: const HomePage(),
//         ),
//         const Divider(),
//         SizedBox(
//           height: size.height,
//           child: const ProjectsPage(),
//         ),
//         const Divider(),
//         SizedBox(
//           height: size.height,
//           child: const ExperiencePage(),
//         ),
//         const Divider(),
//         SizedBox(
//           height: size.height,
//           child: const EducationPage(),
//         ),
//       ],
//     );
//   }
// }
