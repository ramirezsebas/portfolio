class Skill {
  final String name;

  final String icon;

  Skill({required this.name, required this.icon});
}

final skills = [
  Skill(
    name: "Docker",
    icon: "assets/icons/docker.png",
  ),
  Skill(
    name: "JavaScript",
    icon: "assets/icons/js.png",
  ),
  Skill(
    name: "Node.js",
    icon: "assets/icons/nodejs.png",
  ),
  Skill(
    name: "TypeScript",
    icon: "assets/icons/typescript.png",
  ),
];
