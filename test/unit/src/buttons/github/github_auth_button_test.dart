// Copyright (c) 2021 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Check the default value of', () {
    final GithubAuthButton githubAuthButton =
        GithubAuthButton(onPressed: () {});
    test('text', () {
      expect(githubAuthButton.text, 'Sign in with Github');
    });
    test('rtl', () {
      expect(githubAuthButton.rtl, false);
    });
    test('isLoading', () {
      expect(githubAuthButton.isLoading, false);
    });
  });
}
