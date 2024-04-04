import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_portfolio/layouts/layouts.dart';
import 'package:my_portfolio/models/skills.dart';
import 'package:my_portfolio/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BodyLayout(
      childrenForDesktop: [
        const Expanded(
          child: NameBio(
            name: "Matias Ramirez",
            bio:
                "I am Matías Sebastián Ramírez Brizuela, a software engineer with three years of experience in the technology sector. Completing the computer engineering degree at the Polytechnic Faculty, National University of Asunción. I specialize in mobile app development with Flutter and Dart, as well as web development with Angular and React. I enjoy solving complex problems with creativity and precision. Furthermore, I am proficient in Node.js with JavaScript and TypeScript, along with frameworks like Express and Fastify. I am committed to excellence and collaboration in my work.",
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.1,
        ),
        SizedBox(
          width: 200,
          height: 200,
          child: Swiper(
            itemCount: topSkills.length,
            itemBuilder: (context, index) {
              final skill = topSkills[index];
              return Image.asset(skill.icon);
            },
            autoplay: true,
          ),
        ),
      ],
      childrenForMobile: [
        SizedBox(
          width: 200,
          height: 200,
          child: Swiper(
            itemCount: topSkills.length,
            itemBuilder: (context, index) {
              final skill = topSkills[index];
              return Image.asset(skill.icon);
            },
            autoplay: true,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.1,
        ),
        const NameBio(
          name: "Matias Ramirez",
          bio:
              "I am Matías Sebastián Ramírez Brizuela, a software engineer with three years of experience in the technology sector. Completing the computer engineering degree at the Polytechnic Faculty, National University of Asunción. I specialize in mobile app development with Flutter and Dart, as well as web development with Angular and React. I enjoy solving complex problems with creativity and precision. Furthermore, I am proficient in Node.js with JavaScript and TypeScript, along with frameworks like Express and Fastify. I am committed to excellence and collaboration in my work.",
        ),
      ],
    );
  }
}
