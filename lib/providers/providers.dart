import 'package:flutter/material.dart';
import 'package:my_portfolio/models/models.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

@riverpod
class ThemeModeNotifier extends _$ThemeModeNotifier {
  @override
  ThemeMode build() {
    return ThemeMode.light;
  }

  bool isDarkMode() {
    return state == ThemeMode.dark;
  }

  void toggle() {
    state = state == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
  }
}

@riverpod
class GeneralSearchNotifier extends _$GeneralSearchNotifier {
  @override
  String build() {
    return '';
  }

  void update(String value) {
    state = value;
  }
}

@riverpod
class SkillsSearch extends _$SkillsSearch {
  @override
  List<SkillCategory> build() {
    return skillCategories;
  }

  void filter(String value) {
    state = skillCategories
        .map((e) => e.copyWith(
              skills: e.skills
                  .where((element) =>
                      element.name.toLowerCase().contains(value.toLowerCase()))
                  .toList(),
            ))
        .toList()
        .where((element) => element.skills.isNotEmpty)
        .toList();
  }
}

@riverpod
class ExperiencesSearch extends _$ExperiencesSearch {
  @override
  List<Experience> build() {
    return experiences;
  }

  void filter(String value) {
    state = experiences
        .where((element) =>
            element.company.toLowerCase().contains(value.toLowerCase()) ||
            element.title.toLowerCase().contains(value.toLowerCase()) ||
            element.location.toLowerCase().contains(value.toLowerCase()) ||
            element.description.toLowerCase().contains(value.toLowerCase()) ||
            element.date.toLowerCase().contains(value.toLowerCase()))
        .toList();
  }
}
