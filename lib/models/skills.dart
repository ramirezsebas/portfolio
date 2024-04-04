class SkillCategory {
  final String name;
  final List<Skill> skills;

  SkillCategory({
    required this.name,
    required this.skills,
  });
}

class Skill {
  final String name;
  final String icon;

  Skill({
    required this.name,
    required this.icon,
  });
}

final skillCategories = [
  SkillCategory(
    name: "Programming Languages",
    skills: programmingLanguages,
  ),
  SkillCategory(
    name: "Frameworks",
    skills: frameworks,
  ),
  SkillCategory(
    name: "Tools",
    skills: tools,
  ),
  SkillCategory(
    name: "Databases",
    skills: databases,
  ),
  SkillCategory(
    name: "Operating Systems",
    skills: operatingSystems,
  ),
];

final programmingLanguages = [
  Skill(
    name: "Dart",
    icon: "assets/icons/dart.png",
  ),
  Skill(
    name: "JavaScript",
    icon: "assets/icons/js.png",
  ),
  Skill(
    name: "TypeScript",
    icon: "assets/icons/typescript.png",
  ),
];

final frameworks = [
  Skill(
    name: "Angular",
    icon: "assets/icons/angular.png",
  ),
  Skill(
    name: "Express",
    icon: "assets/icons/express.png",
  ),
  Skill(
    name: "Fastify",
    icon: "assets/icons/fastify.png",
  ),
  Skill(
    name: "Flutter",
    icon: "assets/icons/flutter.png",
  ),
  Skill(
    name: "React",
    icon: "assets/icons/react.png",
  ),
];

final tools = [
  Skill(
    name: "Git",
    icon: "assets/icons/git.png",
  ),
  Skill(
    name: "GitHub",
    icon: "assets/icons/github.png",
  ),
  Skill(
    name: "GitLab",
    icon: "assets/icons/gitlab.png",
  ),
  Skill(
    name: "Postman",
    icon: "assets/icons/postman.png",
  ),
  Skill(
    name: "Visual Studio Code",
    icon: "assets/icons/vscode.png",
  ),
];

final databases = [
  Skill(
    name: "MongoDB",
    icon: "assets/icons/mongodb.png",
  ),
  Skill(
    name: "MySQL",
    icon: "assets/icons/mysql.png",
  ),
  Skill(
    name: "PostgreSQL",
    icon: "assets/icons/postgresql.png",
  ),
];

final operatingSystems = [
  Skill(
    name: "Linux",
    icon: "assets/icons/linux.png",
  ),
  Skill(
    name: "Windows",
    icon: "assets/icons/windows.png",
  ),
  Skill(
    name: "macOS",
    icon: "assets/icons/macos.png",
  ),
];
