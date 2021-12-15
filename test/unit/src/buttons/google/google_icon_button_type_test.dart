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
  group('google icon button type light mode', () {
    final GoogleAuthButton googleAuthButton = GoogleAuthButton(
      onPressed: () {},
      style: AuthButtonStyle(
        buttonType: AuthButtonType.icon,
      ),
    );

    group('check icon style value of', () {
      test('iconUrl', () {
        AuthIcon icon = googleAuthButton.getIcon();
        expect(icon.iconUrl, AuthIcons.google[0]);
      });
      test('iconBackground', () {
        Color? iconBackground = googleAuthButton.getIconBackground();
        expect(iconBackground, null);
      });
      test('iconColor', () {
        Color? iconColor = googleAuthButton.getIconColor();
        expect(iconColor, null);
      });
    });

    test('check button color', () {
      Color? buttonColor = googleAuthButton.getButtonColor();
      expect(buttonColor, Colors.white);
    });
  });

  group('google default button type dark mode', () {
    final GoogleAuthButton googleAuthButton = GoogleAuthButton(
      onPressed: () {},
      darkMode: true,
      style: AuthButtonStyle(
        buttonType: AuthButtonType.icon,
      ),
    );

    group('check icon style value of', () {
      test('iconUrl', () {
        AuthIcon icon = googleAuthButton.getIcon();
        expect(icon.iconUrl, AuthIcons.google[0]);
      });
      test('iconBackground', () {
        Color? iconBackground = googleAuthButton.getIconBackground();
        expect(iconBackground, null);
      });
      test('iconColor', () {
        Color? iconColor = googleAuthButton.getIconColor();
        expect(iconColor, null);
      });
    });

    test('check button color', () {
      Color? buttonColor = googleAuthButton.getButtonColor();
      expect(buttonColor, AuthColors.darkMode);
    });
  });

  group('check icon button style value of', () {
    GoogleAuthButton googleAuthButton = GoogleAuthButton(
      onPressed: () {},
      style: AuthButtonStyle(
        buttonType: AuthButtonType.icon,
      ),
    );
    AuthButtonStyle? style = googleAuthButton.getButtonStyle();
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
