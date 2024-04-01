import 'package:flutter/material.dart';
import 'package:my_portfolio/extensions/extensions.dart';

class NameBio extends StatelessWidget {
  const NameBio({
    super.key,
    required this.name,
    required this.bio,
  });

  final String name;
  final String bio;

  @override
  Widget build(BuildContext context) {
    final isMobileSize = MediaQuery.of(context).isMobileSize;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          name,
          style: Theme.of(context).textTheme.displayLarge,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          bio,
          style: Theme.of(context).textTheme.bodyLarge,
          textAlign: !isMobileSize ? TextAlign.start : TextAlign.center,
        ),
      ],
    );
  }
}
