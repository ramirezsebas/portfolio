import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/widgets.dart';

class ExperiencePage extends StatelessWidget {
  const ExperiencePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Experience",
          style: Theme.of(context).textTheme.displayLarge,
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
