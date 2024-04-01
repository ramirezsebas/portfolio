import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        NameBio(
          name: "Matias Ramirez",
          bio:
              "I am Matías Sebastián Ramírez Brizuela, a software engineer with three years of experience in the technology sector. Completing the computer engineering degree at the Polytechnic Faculty, National University of Asunción. I specialize in mobile app development with Flutter and Dart, as well as web development with Angular and React. I enjoy solving complex problems with creativity and precision. Furthermore, I am proficient in Node.js with JavaScript and TypeScript, along with frameworks like Express and Fastify. I am committed to excellence and collaboration in my work.",
        ),
      ],
    );
  }
}
