import 'package:flutter/material.dart';
import 'package:my_portfolio/extensions/extensions.dart';

class BodyLayout extends StatelessWidget {
  const BodyLayout({
    super.key,
    required this.childrenForDesktop,
    required this.childrenForMobile,
  });

  final List<Widget> childrenForMobile;
  final List<Widget> childrenForDesktop;

  @override
  Widget build(BuildContext context) {
    final isMobileSize = MediaQuery.of(context).isMobileSize;

    if (isMobileSize) {
      return Column(
        children: childrenForMobile,
      );
    }

    return Row(
      children: childrenForDesktop,
    );
  }
}
