// Copyright (c) 2021 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:auth_buttons/auth_buttons.dart';
import 'package:auth_buttons/src/buttons/apple_auth_button.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final AppleAuthButton appleAuthButton = AppleAuthButton(onPressed: () {});
  group('Check the default value of', () {
    test('text', () {
      expect(appleAuthButton.text, 'Sign in with Apple');
    });
    test('isLoading', () {
      expect(appleAuthButton.isLoading, false);
    });
    test('rtl', () {
      expect(appleAuthButton.rtl, false);
    });
  });
}
