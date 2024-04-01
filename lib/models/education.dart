class Education {
  final String degree;
  final String major;
  final String university;
  final String graduationYear;
  final String observation;
  final String country;

  Education({
    required this.degree,
    required this.major,
    required this.university,
    required this.graduationYear,
    this.country = "Paraguay",
    this.observation = "",
  });
}

final educations = [
  Education(
    degree: "Bachelor of Engineering in Computer Engineering",
    major: "Computer Engineering",
    university: "Polytechnical Faculty, Universidad Nacional de Asunción",
    graduationYear: "2025",
    observation:
        "Finished the curriculum in 2023, currently working on the final project.",
  ),
  Education(
    degree: "High School Diploma",
    major: "Informatics",
    university: "Technical School Kolping",
    graduationYear: "2015",
  ),
];
