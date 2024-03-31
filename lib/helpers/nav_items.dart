import 'package:flutter/material.dart';

class NavItem {
  final Icon icon;
  final String label;

  const NavItem({
    required this.icon,
    required this.label,
  });
}

const navItems = [
  NavItem(icon: Icon(Icons.bookmark_rounded), label: "Skills"),
  NavItem(icon: Icon(Icons.workspaces_rounded), label: "Projects"),
  NavItem(icon: Icon(Icons.work_rounded), label: "Experience"),
  NavItem(icon: Icon(Icons.school_rounded), label: "Education"),
  NavItem(icon: Icon(Icons.file_copy_rounded), label: "Resumé"),
];
