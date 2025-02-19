import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:simpler_counter_app/main.dart';

void main() {
  testWidgets('Counter increments when floating action button is pressed', (WidgetTester tester) async {
    // Build the ScaffoldExampleApp widget
    await tester.pumpWidget(const ScaffoldExampleApp());

    // Verify that the counter starts at 0
    expect(find.text('You have pressed the button 0 times.'), findsOneWidget);
    expect(find.text('You have pressed the button 1 times.'), findsNothing);

    // Tap the floating action button
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that the counter increments to 1
    expect(find.text('You have pressed the button 0 times.'), findsNothing);
    expect(find.text('You have pressed the button 1 times.'), findsOneWidget);
  });
}
