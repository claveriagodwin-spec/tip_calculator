import 'package:flutter_test/flutter_test.dart';
import 'package:tip_calculator/main.dart';

void main() {
  test('computeTip returns 75.00 tip and 575.00 total for 500 at 15%', () {
    final result = computeTip(500, 15);
    expect(result.tip, 75);
    expect(result.total, 575);
  });

  test('parseBill returns null for invalid input', () {
    expect(parseBill('abc'), isNull);
    expect(parseBill(' 42.5 '), 42.5);
  });
}