// Copyright (c) 2021 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:auth_buttons/auth_buttons.dart';
import 'package:auth_buttons/src/shared/core/widgets/auth_icon.dart';
import 'package:auth_buttons/src/utils/auth_colors.dart';
import 'package:auth_buttons/src/utils/auth_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('facebook icon button type light mode', () {
    final FacebookAuthButton facebookAuthButton = FacebookAuthButton(
      onPressed: () {},
      style: const AuthButtonStyle(
        buttonType: AuthButtonType.icon,
      ),
    );

    group('check icon style value of', () {
      test('iconUrl', () {
        AuthIcon icon = facebookAuthButton.getIcon();
        expect(icon.iconUrl, AuthIcons.facebook[0]);
      });
      test('iconBackground', () {
        Color? iconBackground = facebookAuthButton.getIconBackground();
        expect(iconBackground, null);
      });
      test('iconColor', () {
        Color? iconColor = facebookAuthButton.getIconColor();
        expect(iconColor, null);
      });
    });

    test('check button color', () {
      Color? buttonColor = facebookAuthButton.getButtonColor();
      expect(buttonColor, AuthColors.facebook);
    });
  });

  group('facebook default button type dark mode', () {
    final FacebookAuthButton facebookAuthButton = FacebookAuthButton(
      onPressed: () {},
      darkMode: true,
      style: const AuthButtonStyle(
        buttonType: AuthButtonType.icon,
      ),
    );

    group('check icon style value of', () {
      test('iconUrl', () {
        AuthIcon icon = facebookAuthButton.getIcon();
        expect(icon.iconUrl, AuthIcons.facebook[0]);
      });
      test('iconBackground', () {
        Color? iconBackground = facebookAuthButton.getIconBackground();
        expect(iconBackground, null);
      });
      test('iconColor', () {
        Color? iconColor = facebookAuthButton.getIconColor();
        expect(iconColor, null);
      });
    });

    test('check button color', () {
      Color? buttonColor = facebookAuthButton.getButtonColor();
      expect(buttonColor, AuthColors.darkMode);
    });
  });

  group('check icon button style value of', () {
    FacebookAuthButton facebookAuthButton = FacebookAuthButton(
      onPressed: () {},
      style: const AuthButtonStyle(
        buttonType: AuthButtonType.icon,
      ),
    );
    AuthButtonStyle? style = facebookAuthButton.getButtonStyle();
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
      expect(style!.padding, const EdgeInsets.all(0.0));
    });
  });
}
