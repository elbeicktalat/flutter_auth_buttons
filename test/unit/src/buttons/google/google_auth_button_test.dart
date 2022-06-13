// Copyright (c) 2021 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Check the default value of', () {
    final GoogleAuthButton googleAuthButton =
        GoogleAuthButton(onPressed: () {});
    test('text', () {
      expect(googleAuthButton.text, 'Sign in with Google');
    });
    test('isLoading', () {
      expect(googleAuthButton.isLoading, false);
    });
    test('rtl', () {
      expect(googleAuthButton.rtl, false);
    });
  });
}
