import 'package:flutter/material.dart';
import 'package:my_portfolio/models/skills.dart';
import 'package:my_portfolio/widgets/skill_section.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            "Skills",
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
          ...skillCategories.map(
            (e) => SkillSection(
              skillCategory: e,
            ),
          ),
        ],
      ),
    );
  }
}
