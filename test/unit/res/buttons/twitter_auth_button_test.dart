import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Check the default value of', () {
    final TwitterAuthButton twitterAuthButton =
        TwitterAuthButton(onPressed: () {});
    test('text', () {
      expect(twitterAuthButton.text, 'Sign in with Twitter');
    });
    test('darkMode', () {
      expect(twitterAuthButton.darkMode, false);
    });
    test('style', () {
      expect(twitterAuthButton.style, null);
    });
    test('rtl', () {
      expect(twitterAuthButton.rtl, false);
    });
  });
}
