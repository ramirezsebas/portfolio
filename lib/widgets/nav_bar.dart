import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({
    super.key,
    required this.height,
    required this.padding,
    required this.leading,
    required this.title,
    required this.trailing,
  });

  final double height;
  final EdgeInsetsGeometry padding;
  final List<Widget> title;
  final List<Widget> leading;
  final List<Widget> trailing;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: padding,
      width: size.width,
      height: height,
      child: Row(
        children: [
          ...leading,
          const Spacer(),
          ...title,
          const Spacer(),
          ...trailing,
        ],
      ),
    );
  }
}
