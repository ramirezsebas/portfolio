import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_portfolio/layouts/layouts.dart';
import 'package:my_portfolio/models/skills.dart';

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
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Programming Languages",
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: skills
                  .map(
                    (e) => SizedBox(
                      width: 200,
                      child: Card(
                        child: Row(
                          children: [
                            Text(e.name),
                            Image.asset(
                              e.icon,
                              height: 50,
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
