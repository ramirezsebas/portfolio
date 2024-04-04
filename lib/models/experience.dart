import 'package:my_portfolio/models/skills.dart';

class Experience {
  final String title;
  final String titleEs;
  final String company;
  final List<Skill> techStack;
  final String location;
  final String date;
  final String description;
  final String descriptionSpanish;

  Experience({
    required this.title,
    required this.titleEs,
    required this.company,
    required this.techStack,
    required this.location,
    required this.date,
    required this.description,
    required this.descriptionSpanish,
  });
}

final experiences = [
  Experience(
    title: "Software Engineer",
    titleEs: "Ingeniero de Software",
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
    descriptionSpanish:
        "Desarrollé y mantuve aplicaciones móviles y web para clientes en el sector financiero. Utilicé Flutter, React y Node.js con TypeScript, integrando Fastify. Implementé principios de arquitectura limpia para garantizar un código eficiente y escalable.",
  ),
  Experience(
    title: "Software Engineer",
    titleEs: "Ingeniero de Software",
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
    descriptionSpanish:
        "Desarrollé y mantuve aplicaciones móviles y web para clientes. Utilicé Flutter, Angular y Node.js con TypeScript, integrando Express.",
  ),
];
