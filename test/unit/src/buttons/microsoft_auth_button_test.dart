import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Check the default value of', () {
    final MicrosoftAuthButton microsoftAuthButton =
        MicrosoftAuthButton(onPressed: () {});
    test('text', () {
      expect(microsoftAuthButton.text, 'Sign in with Microsoft');
    });
    test('darkMode', () {
      expect(microsoftAuthButton.darkMode, false);
    });
    test('Button type', () {
      expect(microsoftAuthButton.style!.buttonType, null);
    });
    test('rtl', () {
      expect(microsoftAuthButton.rtl, false);
    });
  });
}
