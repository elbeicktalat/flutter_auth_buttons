import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Check the default value of', () {
    final GithubAuthButton githubAuthButton =
        GithubAuthButton(onPressed: () {});
    test('text', () {
      expect(githubAuthButton.text, 'Sign in with Github');
    });
    test('darkMode', () {
      expect(githubAuthButton.darkMode, false);
    });
    test('Button type', () {
      expect(githubAuthButton.style!.buttonType, null);
    });
    test('rtl', () {
      expect(githubAuthButton.rtl, false);
    });
  });
}
