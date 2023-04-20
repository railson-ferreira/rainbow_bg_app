import 'package:flutter/material.dart';
import 'package:rainbow_bg_app/home_page.dart';

/// The main application widget
class App extends StatelessWidget {
  /// Creates the main application widget
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rainbow BG App',
      theme: ThemeData(fontFamily: "RobotoMono"),
      home: const HomePage(),
    );
  }
}
