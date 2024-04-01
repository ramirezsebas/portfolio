class Project {
  final String title;
  final String techStack;
  final String description;

  Project({
    required this.title,
    required this.techStack,
    required this.description,
  });
}

final projects = [
  Project(
    title: "Digital Queue Full-Stack Application",
    techStack: "Angular, Node.js, Express, TypeORM, Postgresql, PM2",
    description:
        "Created a Digital Queue Full-Stack Application using Angular and Node.js with TypeScript, integrating Express and TypeORM. Implemented with clean architecture principles, the application efficiently manages queuing processes. Deployed using PM2 and the Apache web server, it alerts available cashiers with sound notifications upon availability, enhancing customer service efficiency.",
  ),
  Project(
    title: "Vilab App",
    techStack: "Flutter, Dart, Firebase",
    description:
        "Developed Vilab, a mobile application facilitating the management and scanning of laboratory samples. Utilized Flutter and Dart for app development, with integrated C++ code enabling execution of complex image processing algorithms.",
  ),
];
