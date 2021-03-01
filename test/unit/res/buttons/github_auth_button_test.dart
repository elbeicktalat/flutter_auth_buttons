import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Check the default value of', () {
    GithubAuthButton githubAuthButton = GithubAuthButton(onPressed: () {});
    test('text', () {
      expect(githubAuthButton.text, 'Sign in with Github');
    });
    test('darkMode', () {
      expect(githubAuthButton.darkMode, false);
    });
    test('style', () {
      expect(githubAuthButton.style, null);
    });
    test('rtl', () {
      expect(githubAuthButton.rtl, false);
    });
  });
}
