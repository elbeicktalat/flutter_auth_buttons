import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Check the default value of', () {
    final FacebookAuthButton facebookAuthButton =
        FacebookAuthButton(onPressed: () {});
    test('text', () {
      expect(facebookAuthButton.text, 'Sign in with Facebook');
    });
    test('darkMode', () {
      expect(facebookAuthButton.darkMode, false);
    });
    test('Button type', () {
      expect(facebookAuthButton.style!.buttonType, null);
    });
    test('rtl', () {
      expect(facebookAuthButton.rtl, false);
    });
  });
}
