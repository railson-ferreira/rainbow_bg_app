import 'dart:math';

import 'package:flutter/material.dart';

/// Utils tools to work with Material colors
extension ColorUtils on Color {
  // Max color number + 1 in order to work properly with Random().nextInt()
  static const _maxColorNumberPlusOne = 0x00FFFFFF + 1;
  static const _maxSolidColorNumber = 0xFFFFFFFF;
  static const _solidAlphaChanel = 0xFF000000;

  /// Generates a new random solid Color
  static Color generateRandomSolidColor() {
    return Color(Random().nextInt(_maxColorNumberPlusOne) + _solidAlphaChanel);
  }

  /// Gets the inverted color
  Color getInverted() {
    return Color(_maxSolidColorNumber - value + _solidAlphaChanel);
  }
}
