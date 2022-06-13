// Copyright (c) 2021 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Check the default value of', () {
    final EmailAuthButton sut = EmailAuthButton(onPressed: () {});
    test('text', () {
      expect(sut.text, 'Sign in with Email');
    });
    test('isLoading', () {
      expect(sut.isLoading, false);
    });
    test('rtl', () {
      expect(sut.rtl, false);
    });
  });
}
