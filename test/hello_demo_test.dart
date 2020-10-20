import 'package:flutter_test/flutter_test.dart';
import 'package:hello_demo/demo/test/test_demo.dart';

void main() {
  test('return hello + something', () {
    var str = HelloTestDemo.greet('today');
    expect(str, 'nihao, 你好');
  });
}
