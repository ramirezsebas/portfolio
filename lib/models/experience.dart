class Experience {
  final String title;
  final String company;
  final String techStack;
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
    company: "ITTI Digial",
    techStack: "Flutter, React, Node.js, TypeScript, Fastify",
    location: "Asunción, Paraguay",
    date: "2022 - Present",
    description:
        "Developed and maintained mobile and web applications for clients in the financial sectors. Utilized Flutter, React and Node.js with TypeScript, integrating Fastify. Implemented clean architecture principles to ensure efficient and scalable code.",
  ),
  Experience(
    title: "Software Engineer",
    company: "Kernel SRL",
    techStack: "Flutter, Angular, Node.js, TypeScript, Express",
    location: "San Lorenzo, Paraguay",
    date: "2021 - 2022",
    description:
        "Developed and maintained mobile and web applications for clients. Utilized Flutter, Angular and Node.js with TypeScript, integrating Express.",
  ),
];
