import 'package:my_portfolio/models/models.dart';

class Project {
  final String title;
  final List<Skill> skills;

  final String description;

  Project({
    required this.title,
    required this.skills,
    required this.description,
  });
}

final projects = [
  Project(
    title: "Digital Queue Full-Stack Application",
    skills: [
      Skill(
        name: "Angular",
        icon: "assets/icons/angular.png",
      ),
      Skill(
        name: "Node.js",
        icon: "assets/icons/nodejs.png",
      ),
      Skill(
        name: "TypeScript",
        icon: "assets/icons/typescript.png",
      ),
      Skill(
        name: "Express",
        icon: "assets/icons/express.png",
      ),
      Skill(
        name: "Postgresql",
        icon: "assets/icons/postgresql.png",
      ),
    ],
    description:
        "Created a Digital Queue Full-Stack Application using Angular and Node.js with TypeScript, integrating Express and TypeORM. Implemented with clean architecture principles, the application efficiently manages queuing processes. Deployed using PM2 and the Apache web server, it alerts available cashiers with sound notifications upon availability, enhancing customer service efficiency.",
  ),
  Project(
    title: "Vilab App",
    skills: [
      Skill(
        name: "Flutter",
        icon: "assets/icons/flutter.png",
      ),
      Skill(
        name: "Dart",
        icon: "assets/icons/dart.png",
      ),
      Skill(
        name: "Firebase",
        icon: "assets/icons/firebase.png",
      ),
    ],
    description:
        "Developed Vilab, a mobile application facilitating the management and scanning of laboratory samples. Utilized Flutter and Dart for app development, with integrated C++ code enabling execution of complex image processing algorithms.",
  ),
];
