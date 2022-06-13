// Copyright (c) 2021 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Check the default value of', () {
    final FacebookAuthButton facebookAuthButton =
        FacebookAuthButton(onPressed: () {});
    test('text', () {
      expect(facebookAuthButton.text, 'Sign in with Facebook');
    });
    test('isLoading', () {
      expect(facebookAuthButton.isLoading, false);
    });
    test('rtl', () {
      expect(facebookAuthButton.rtl, false);
    });
  });
}
