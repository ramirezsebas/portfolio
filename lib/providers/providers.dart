import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

@riverpod
class ThemeModeNotifier extends _$ThemeModeNotifier {
  @override
  ThemeMode build() {
    return ThemeMode.light;
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
