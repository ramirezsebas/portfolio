import 'package:flutter/material.dart';
import 'package:my_portfolio/models/skills.dart';

class SkillSection extends StatelessWidget {
  const SkillSection({
    super.key,
    required this.currentLocale,
    required this.skillCategory,
  });

  final SkillCategory skillCategory;
  final Locale currentLocale;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              currentLocale == const Locale('en')
                  ? skillCategory.name
                  : skillCategory.nameSpanish,
              style: Theme.of(context).textTheme.displaySmall,
            ),
            const SizedBox(width: 20),
            const Expanded(
              child: Divider(
                thickness: 1,
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Wrap(
            spacing: 20,
            children: skillCategory.skills
                .map(
                  (e) => SizedBox(
                    width: 200,
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          children: [
                            Text(e.name),
                            const Spacer(),
                            Image.asset(
                              e.icon,
                              height: 40,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}
