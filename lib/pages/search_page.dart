import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Search",
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
      ],
    );
  }
}
