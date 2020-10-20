import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hello_demo/demo/test/test_demo.dart';

void main() {
  test('return hello + something', () {
    var str = HelloTestDemo.greet('today');
    expect(str, 'hello today');
  });

  testWidgets('widgets do things', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: TestDemo(),
    ));

    final lText = find.text('hello');
    // expect(lText, findsNothing);
    expect(lText, findsWidgets);
    // expect(lText, findsOneWidget);
  });
}
