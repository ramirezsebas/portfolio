import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      endDrawer: const Drawer(),
      body: Column(
        children: [
          NavBar(
            scaffoldKey: scaffoldKey,
            height: 45,
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 1500,
                    color: Colors.yellow,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class NavBar extends StatelessWidget {
  const NavBar({
    super.key,
    required this.scaffoldKey,
    required this.height,
    required this.padding,
  });

  final GlobalKey<ScaffoldState> scaffoldKey;
  final double height;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: padding,
      width: size.width,
      height: height,
      child: Row(
        children: [
          const Icon(Icons.code_off_outlined),
          const Spacer(),
          const Text("Matias Ramirez"),
          const Spacer(),
          IconButton(
            icon: const Icon(Icons.menu_outlined),
            onPressed: () => scaffoldKey.currentState?.openEndDrawer(),
          )
        ],
      ),
    );
  }
}
