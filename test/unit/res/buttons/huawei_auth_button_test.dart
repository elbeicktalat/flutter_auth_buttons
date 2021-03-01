import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Check the default value of', () {
    HuaweiAuthButton huaweiAuthButton = HuaweiAuthButton(onPressed: () {});
    test('text', () {
      expect(huaweiAuthButton.text, 'Sign in with Huawei');
    });
    test('darkMode', () {
      expect(huaweiAuthButton.darkMode, false);
    });
    test('style', () {
      expect(huaweiAuthButton.style, null);
    });
    test('rtl', () {
      expect(huaweiAuthButton.rtl, false);
    });
  });
}
