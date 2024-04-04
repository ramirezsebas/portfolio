import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_portfolio/extensions/extensions.dart';
import 'package:my_portfolio/providers/providers.dart';
import 'package:my_portfolio/widgets/widgets.dart';

class SkillsPage extends ConsumerWidget {
  const SkillsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            l10n.skills,
            style: Theme.of(context).textTheme.displayLarge,
          ),
          const SizedBox(height: 20),
          TextFormField(
            onChanged: ref.watch(skillsSearchProvider.notifier).filter,
            decoration: InputDecoration(
              hintText: "${l10n.skills}...",
              prefixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
          ),
          const SizedBox(height: 50),
          ...ref.watch(skillsSearchProvider).map(
                (e) => SkillSection(
                  currentLocale: ref.watch(localeToggleProvider),
                  skillCategory: e,
                ),
              ),
        ],
      ),
    );
  }
}
