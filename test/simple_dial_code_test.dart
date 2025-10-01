// test/simple_dial_code_test.dart

import 'package:flutter_test/flutter_test.dart';
import 'package:simple_dial_code/simple_dial_code.dart';

void main() {
  group('SimpleDialCode Tests', () {
    test('fromIsoCode should return correct dial code', () {
      expect(SimpleDialCode.fromIsoCode('TR'), '+90');
      expect(SimpleDialCode.fromIsoCode('US'), '+1');
      expect(SimpleDialCode.fromIsoCode('de'), '+49');
    });

    test('fromIsoCode should return null for invalid code', () {
      expect(SimpleDialCode.fromIsoCode('XX'), null);
    });

    test('fromDialCode should return correct ISO code', () {
      expect(SimpleDialCode.fromDialCode('+90'), 'TR');
      expect(SimpleDialCode.fromDialCode('+1'), 'US');
      expect(SimpleDialCode.fromDialCode('49'), 'DE');
    });

    test('fromDialCode should return null for invalid dial code', () {
      expect(SimpleDialCode.fromDialCode('+9999'), null);
    });
  });
}
