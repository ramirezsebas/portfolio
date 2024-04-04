import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_portfolio/extensions/extensions.dart';
import 'package:my_portfolio/providers/providers.dart';

class ExperiencePage extends ConsumerWidget {
  const ExperiencePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            l10n.experience,
            style: Theme.of(context).textTheme.displayLarge,
          ),
          const SizedBox(height: 20),
          TextFormField(
            onChanged: ref.watch(experiencesSearchProvider.notifier).filter,
            decoration: InputDecoration(
              hintText: "${l10n.search}...",
              prefixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
          ),
          const SizedBox(height: 20),
          ...ref.watch(experiencesSearchProvider).map(
                (e) => Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            e.company,
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
                      Text(
                        "${ref.watch(localeToggleProvider) == const Locale('en') ? e.title : e.titleEs} - ${e.location}",
                        style: Theme.of(context).textTheme.bodyLarge,
                        locale: ref.watch(localeToggleProvider),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        ref.watch(localeToggleProvider) == const Locale("en")
                            ? e.description
                            : e.descriptionSpanish,
                        style: Theme.of(context).textTheme.bodyMedium,
                        locale: ref.watch(localeToggleProvider),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        e.date,
                        style: Theme.of(context).textTheme.bodySmall,
                        locale: ref.watch(localeToggleProvider),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Wrap(
                          spacing: 20,
                          children: e.techStack
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
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
        ],
      ),
    );
  }
}
