// Copyright (c) 2021 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:auth_buttons/auth_buttons.dart';
import 'package:auth_buttons/src/utils/auth_colors.dart';
import 'package:auth_buttons/src/utils/auth_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('huawei icon button type light mode', () {
    final HuaweiAuthButton huaweiAuthButton = HuaweiAuthButton(
      onPressed: () {},
      style: AuthButtonStyle(
        buttonType: AuthButtonType.icon,
      ),
    );

    group('check icon style value of', () {
      test('iconUrl', () {
        String iconUrl = huaweiAuthButton.getIconUrl();
        expect(iconUrl, AuthIcons.huaweiWhite[0]);
      });
      test('iconBackground', () {
        Color? iconBackground = huaweiAuthButton.getIconBackground();
        expect(iconBackground, null);
      });
      test('iconColor', () {
        Color? iconColor = huaweiAuthButton.getIconColor();
        expect(iconColor, null);
      });
    });

    test('check button color', () {
      Color? buttonColor = huaweiAuthButton.getButtonColor();
      expect(buttonColor, AuthColors.huawei);
    });
  });

  group('huawei default button type dark mode', () {
    final HuaweiAuthButton huaweiAuthButton = HuaweiAuthButton(
      onPressed: () {},
      darkMode: true,
      style: AuthButtonStyle(
        buttonType: AuthButtonType.icon,
      ),
    );

    group('check icon style value of', () {
      test('iconUrl', () {
        String iconUrl = huaweiAuthButton.getIconUrl();
        expect(iconUrl, AuthIcons.huaweiWhite[0]);
      });
      test('iconBackground', () {
        Color? iconBackground = huaweiAuthButton.getIconBackground();
        expect(iconBackground, null);
      });
      test('iconColor', () {
        Color? iconColor = huaweiAuthButton.getIconColor();
        expect(iconColor, null);
      });
    });

    test('check button color', () {
      Color? buttonColor = huaweiAuthButton.getButtonColor();
      expect(buttonColor, AuthColors.darkMode);
    });
  });

  group('check icon button style value of', () {
    HuaweiAuthButton huaweiAuthButton = HuaweiAuthButton(
      onPressed: () {},
      style: AuthButtonStyle(
        buttonType: AuthButtonType.icon,
      ),
    );
    AuthButtonStyle? style = huaweiAuthButton.getButtonStyle();
    test('width', () {
      expect(style!.width, 50.0);
    });
    test('height', () {
      expect(style!.height, 50.0);
    });
    test('borderRadius', () {
      expect(style!.borderRadius, 8.0);
    });
    test('padding', () {
      expect(style!.padding, EdgeInsets.all(0.0));
    });
  });
}
