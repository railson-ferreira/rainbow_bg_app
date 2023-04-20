// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';
import 'package:rainbow_bg_app/app.dart';

void main() {
  testWidgets('Text correct render of screen', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const App());

    // Tap the 'Hello there' text at the screen.
    await tester.tap(find.text("Hello there"));

    await tester.pump();

    // Verify that 'Hello there' exists on screen.
    expect(find.text('Hello there'), findsOneWidget);
  });
}
