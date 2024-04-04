import 'package:flutter/material.dart';

class NavItem {
  const NavItem({
    required this.icon,
    required this.label,
    required this.labelSpanish,
    required this.pathName,
  });

  final Icon icon;
  final String label;
  final String labelSpanish;
  final String pathName;
}

const navItems = [
  NavItem(
    icon: Icon(Icons.donut_small_rounded),
    label: "Skills",
    labelSpanish: "Habilidades",
    pathName: 'skills',
  ),
  // NavItem(
  //   icon: Icon(Icons.donut_small_rounded),
  //   label: "Projects",
  //   pathName: 'projects',
  // ),
  NavItem(
    icon: Icon(Icons.work_rounded),
    label: "Experience",
    labelSpanish: "Experiencia",
    pathName: 'experience',
  ),
  // NavItem(
  //   icon: Icon(Icons.school_rounded),
  //   label: "Education",
  //   pathName: 'education',
  // ),
  NavItem(
    icon: Icon(Icons.file_copy_rounded),
    label: "Resumé",
    labelSpanish: "Currículum",
    pathName: 'resume',
  ),
];
