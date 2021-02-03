import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Check the default value of', () {
    FacebookAuthButton facebookAuthButton = FacebookAuthButton(onPressed: null);
    test('text', () {
      expect(facebookAuthButton.text, 'Sign in with Facebook');
    });
    test('darkMode', () {
      expect(facebookAuthButton.darkMode, false);
    });
    test('style', () {
      expect(facebookAuthButton.style, null);
    });
    test('rtl', () {
      expect(facebookAuthButton.rtl, false);
    });
  });
}
