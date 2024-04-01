import 'package:flutter/material.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Projects",
          style: Theme.of(context).textTheme.displayLarge,
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
