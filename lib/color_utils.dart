import 'dart:math';

import 'package:flutter/material.dart';

/// Utils tools to work with Material colors
extension ColorUtils on Color {
  // Max color number + 1 in order to work properly with Random().nextInt()
  static const _maxColorValuePlusOne = 0x00FFFFFF + 1;
  static const _rgbBlackColorValue = 0x00FFFFFF;
  static const _solidAlphaChanel = 0xFF000000;

  /// Generates a new random solid Color
  static Color generateRandomSolidColor() {
    return Color(Random().nextInt(_maxColorValuePlusOne) + _solidAlphaChanel);
  }

  /// Gets the inverted color
  Color getInverted() {
    // Remove the alpha channel from color
    final rgbColorValue = value & _rgbBlackColorValue;
    // Get only the alpha channel
    final alphaChannel = value - rgbColorValue;
    // Invert the rgb color value
    final invertedRgbColor = _rgbBlackColorValue - rgbColorValue;

    // Bring back the original alpha channel and construct the new color
    return Color(invertedRgbColor + alphaChannel);
  }
}
