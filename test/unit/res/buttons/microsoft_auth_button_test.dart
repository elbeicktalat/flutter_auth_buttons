import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Check the default value of', () {
    MicrosoftAuthButton microsoftAuthButton =
        MicrosoftAuthButton(onPressed: null);
    test('text', () {
      expect(microsoftAuthButton.text, 'Sign in with Microsoft');
    });
    test('darkMode', () {
      expect(microsoftAuthButton.darkMode, false);
    });
    test('style', () {
      expect(microsoftAuthButton.style, null);
    });
    test('rtl', () {
      expect(microsoftAuthButton.rtl, false);
    });
  });
}
