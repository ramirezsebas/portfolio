import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_portfolio/providers/providers.dart';
import 'package:my_portfolio/widgets/skill_section.dart';

class SkillsPage extends ConsumerWidget {
  const SkillsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            "Skills",
            style: Theme.of(context).textTheme.displayLarge,
          ),
          const SizedBox(height: 20),
          TextFormField(
            onChanged: ref.watch(skillsSearchProvider.notifier).filter,
            decoration: InputDecoration(
              hintText: "Search...",
              prefixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
          ),
          const SizedBox(height: 50),
          ...ref.watch(skillsSearchProvider).map(
                (e) => SkillSection(
                  skillCategory: e,
                ),
              ),
        ],
      ),
    );
  }
}
