import 'package:flutter/material.dart';

class ResumePage extends StatelessWidget {
  const ResumePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Resume",
          style: Theme.of(context).textTheme.displayLarge,
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
