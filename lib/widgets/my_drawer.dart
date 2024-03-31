import 'package:flutter/material.dart';
import 'package:my_portfolio/helpers/helpers.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const DrawerHeader(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(),
                Text("Matias Ramirez"),
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
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: const Icon(Icons.search_outlined),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.nightlight_outlined),
                onPressed: () {},
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
