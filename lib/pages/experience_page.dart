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
        const CustomCard(
          title: "Software Engineer",
          companyName: "ITTI Digital",
          duration: "May 2022 - Present",
          bio:
              '''I contribute to fintech projects like "Ueno," using Flutter/React, ensuring robustness and scalability in app development.''',
        ),
        const CustomCard(
          title: "Software Engineer",
          companyName: "Kernel SRL",
          duration: "Febuary 2021 - May 2022",
          bio:
              '''I support, maintain, and enhance RESTful APIs in Node.js, migrate to TypeScript, deploy services, and develop applications in Flutter and Angular.''',
        ),
      ],
    );
  }
}
