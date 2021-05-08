import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Check the default value of', () {
    final AppleAuthButton appleAuthButton = AppleAuthButton(onPressed: () {});
    test('text', () {
      expect(appleAuthButton.text, 'Sign in with Apple');
    });
    test('darkMode', () {
      expect(appleAuthButton.darkMode, false);
    });
    test('Button type', () {
      expect(appleAuthButton.style!.buttonType, null);
    });
    test('rtl', () {
      expect(appleAuthButton.rtl, false);
    });
  });
}
