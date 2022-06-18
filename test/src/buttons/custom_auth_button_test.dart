import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('iconPath should be not blank', () {
    expect(
      () => CustomAuthButton(iconUrl: ''),
      throwsAssertionError,
    );
    expect(
      () => CustomAuthButton(iconUrl: ' '),
      throwsAssertionError,
    );
  });
}
