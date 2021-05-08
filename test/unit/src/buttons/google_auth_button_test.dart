import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Check the default value of', () {
    final GoogleAuthButton googleAuthButton =
        GoogleAuthButton(onPressed: () {});
    test('text', () {
      expect(googleAuthButton.text, 'Sign in with Google');
    });
    test('darkMode', () {
      expect(googleAuthButton.darkMode, false);
    });
    test('Button type', () {
      expect(googleAuthButton.style!.buttonType, null);
    });
    test('rtl', () {
      expect(googleAuthButton.rtl, false);
    });
  });
}
