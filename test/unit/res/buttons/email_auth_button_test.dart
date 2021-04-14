import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Check the default value of', () {
    final EmailAuthButton emailAuthButton = EmailAuthButton(onPressed: () {});
    test('text', () {
      expect(emailAuthButton.text, 'Sign in with Email');
    });
    test('darkMode', () {
      expect(emailAuthButton.darkMode, false);
    });
    test('style', () {
      expect(emailAuthButton.style, null);
    });
    test('rtl', () {
      expect(emailAuthButton.rtl, false);
    });
  });
}
