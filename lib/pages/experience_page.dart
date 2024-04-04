import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_portfolio/providers/providers.dart';

class ExperiencePage extends ConsumerWidget {
  const ExperiencePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            "Experience",
            style: Theme.of(context).textTheme.displayLarge,
          ),
          const SizedBox(height: 20),
          TextFormField(
            onChanged: ref.watch(experiencesSearchProvider.notifier).filter,
            decoration: InputDecoration(
              hintText: "Search...",
              prefixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
          ),
          const SizedBox(height: 20),
          ...ref.watch(experiencesSearchProvider).map(
                (e) => Column(
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
                      "${e.title} - ${e.location}",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    const SizedBox(height: 20),
                    Text(
                      e.description,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    const SizedBox(height: 20),
                    Text(
                      e.date,
                      style: Theme.of(context).textTheme.bodySmall,
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
          // GridView.builder(
          //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          //     crossAxisCount: 3,
          //     crossAxisSpacing: 10,
          //     mainAxisSpacing: 10,
          //   ),
          //   itemCount: experiences.length,
          //   shrinkWrap: true,
          //   itemBuilder: (context, index) {
          //     final experience = experiences[index];
          //     return Card(
          //       child: Padding(
          //         padding: const EdgeInsets.all(8.0),
          //         child: Column(
          //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //           children: [
          //             Text(
          //               experience.title,
          //               style: Theme.of(context).textTheme.headlineSmall,
          //               textAlign: TextAlign.center,
          //             ),
          //             Text(
          //               experience.description,
          //               textAlign: TextAlign.center,
          //               style: Theme.of(context).textTheme.bodyMedium,
          //             ),
          //             Text(
          //               experience.techStack,
          //               textAlign: TextAlign.center,
          //               style: Theme.of(context).textTheme.bodySmall!.copyWith(
          //                     color: Colors
          //                         .primaries[index % Colors.primaries.length],
          //                   ),
          //             ),
          //             Text(
          //               experience.date,
          //               textAlign: TextAlign.center,
          //               style: Theme.of(context).textTheme.bodySmall!.copyWith(
          //                     color: Colors
          //                         .primaries[index % Colors.primaries.length],
          //                   ),
          //             ),
          //           ],
          //         ),
          //       ),
          //     );
          //   },
          // ),
        ],
      ),
    );
  }
}
