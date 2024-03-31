import 'package:flutter/material.dart';

extension SizeX on MediaQueryData {
  bool get isMobileSize => size.width < 850;
}
