// Copyright (c) 2021 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Check the default value of', () {
    final TwitterAuthButton twitterAuthButton =
        TwitterAuthButton(onPressed: () {});
    test('text', () {
      expect(twitterAuthButton.text, 'Sign in with Twitter');
    });
    test('isLoading', () {
      expect(twitterAuthButton.isLoading, false);
    });
    test('rtl', () {
      expect(twitterAuthButton.rtl, false);
    });
  });
}
