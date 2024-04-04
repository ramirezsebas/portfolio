import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_portfolio/gen/assets.gen.dart';
import 'package:my_portfolio/helpers/helpers.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    super.key,
    required this.onToggleTheme,
    required this.themeIcon,
  });

  final VoidCallback onToggleTheme;
  final IconData themeIcon;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: Assets.images.avatar.provider(),
                  radius: 50,
                ),
                Text(
                  "Matias Ramirez",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: navItems.length,
              itemBuilder: (_, index) {
                final navItem = navItems[index];
                return ListTile(
                  leading: navItem.icon,
                  title: Text(navItem.label),
                  onTap: () => GoRouter.of(context).goNamed(navItem.pathName),
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: const Icon(Icons.language_rounded),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text("Select Language"),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ListTile(
                              title: const Text("English"),
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                            ),
                            ListTile(
                              title: const Text("Spanish"),
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
              ),
              IconButton(
                icon: Icon(
                  themeIcon,
                ),
                onPressed: onToggleTheme,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
