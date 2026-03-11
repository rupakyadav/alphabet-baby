// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:alphabet_baby/main.dart';

void main() {
  testWidgets('App loads smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const AlphabetBabyApp());
    await tester.pumpAndSettle();

    // Verify the home screen shows the app title
    expect(find.text('Alphabet Baby'), findsOneWidget);
    expect(find.text('Tap me! 👆'), findsOneWidget);
  });
}
