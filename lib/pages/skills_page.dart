import 'package:flutter/material.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Skills",
          style: Theme.of(context).textTheme.displayLarge,
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
