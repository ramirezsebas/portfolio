import 'package:my_portfolio/models/skills.dart';

class Experience {
  final String title;
  final String company;
  final List<Skill> techStack;
  final String location;
  final String date;
  final String description;

  Experience({
    required this.title,
    required this.company,
    required this.techStack,
    required this.location,
    required this.date,
    required this.description,
  });
}

final experiences = [
  Experience(
    title: "Software Engineer",
    company: "ITTI Digital",
    techStack: [
      Skill(name: "Flutter", icon: "assets/icons/flutter.png"),
      Skill(name: "React", icon: "assets/icons/react.png"),
      Skill(name: "Node.js", icon: "assets/icons/nodejs.png"),
      Skill(name: "TypeScript", icon: "assets/icons/typescript.png"),
      Skill(name: "Fastify", icon: "assets/icons/fastify.png"),
    ],
    location: "Asunción, Paraguay",
    date: "2022 - Present",
    description:
        "Developed and maintained mobile and web applications for clients in the financial sectors. Utilized Flutter, React and Node.js with TypeScript, integrating Fastify. Implemented clean architecture principles to ensure efficient and scalable code.",
  ),
  Experience(
    title: "Software Engineer",
    company: "Kernel SRL",
    techStack: [
      Skill(name: "Flutter", icon: "assets/icons/flutter.png"),
      Skill(name: "Angular", icon: "assets/icons/angular.png"),
      Skill(name: "Node.js", icon: "assets/icons/nodejs.png"),
      Skill(name: "TypeScript", icon: "assets/icons/typescript.png"),
      Skill(name: "Express", icon: "assets/icons/express.png"),
      Skill(name: "JavaScript", icon: "assets/icons/js.png"),
    ],
    location: "San Lorenzo, Paraguay",
    date: "2021 - 2022",
    description:
        "Developed and maintained mobile and web applications for clients. Utilized Flutter, Angular and Node.js with TypeScript, integrating Express.",
  ),
];
