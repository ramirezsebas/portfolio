import 'package:flutter/material.dart';
import 'package:my_portfolio/models/models.dart';

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
        TextFormField(
          decoration: InputDecoration(
            hintText: "Search...",
            prefixIcon: const Icon(Icons.search),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
            ),
          ),
        ),
        const SizedBox(height: 50),
        Wrap(
          spacing: 20,
          children: projects
              .map(
                (e) => SizedBox(
                  width: 200,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        children: [
                          Text(e.description),
                          const SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}
