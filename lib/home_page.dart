import 'package:flutter/material.dart';
import 'package:rainbow_bg_app/color_utils.dart';

/// The home page widget
class HomePage extends StatefulWidget {
  /// Creates the home page widget
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color _backgroundColor = ColorUtils.generateRandomSolidColor();

  static const double _textSize = 25;

  void randomizeBackgroundColor() {
    setState(() {
      _backgroundColor = ColorUtils.generateRandomSolidColor();
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: randomizeBackgroundColor,
      child: Material(
        color: _backgroundColor,
        child: Center(
          child: Text(
            "Hello there",
            style: TextStyle(
              color: _backgroundColor.getInverted(),
              fontSize: _textSize,
            ),
          ),
        ),
      ),
    );
  }
}
