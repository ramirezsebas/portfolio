import 'package:flutter/material.dart';

class NavItem {
  const NavItem({
    required this.icon,
    required this.label,
    required this.pathName,
  });

  final Icon icon;
  final String label;
  final String pathName;
}

const navItems = [
  NavItem(
    icon: Icon(Icons.donut_small_rounded),
    label: "Skills",
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
    pathName: 'resume',
  ),
];
