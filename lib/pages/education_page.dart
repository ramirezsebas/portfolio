import 'package:flutter/material.dart';

class EducationPage extends StatelessWidget {
  const EducationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Education",
          style: Theme.of(context).textTheme.displayLarge,
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
