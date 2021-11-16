// Copyright (c) 2021 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:auth_buttons/auth_buttons.dart';
import 'package:auth_buttons/src/utils/auth_colors.dart';
import 'package:auth_buttons/src/utils/auth_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('microsoft icon button type light mode', () {
    final MicrosoftAuthButton microsoftAuthButton = MicrosoftAuthButton(
      onPressed: () {},
      style: AuthButtonStyle(
        buttonType: AuthButtonType.icon,
      ),
    );

    group('check icon style value of', () {
      test('iconUrl', () {
        String iconUrl = microsoftAuthButton.getIconUrl();
        expect(iconUrl, AuthIcons.microsoft[0]);
      });
      test('iconBackground', () {
        Color? iconBackground = microsoftAuthButton.getIconBackground();
        expect(iconBackground, null);
      });
      test('iconColor', () {
        Color? iconColor = microsoftAuthButton.getIconColor();
        expect(iconColor, null);
      });
    });

    test('check button color', () {
      Color? buttonColor = microsoftAuthButton.getButtonColor();
      expect(buttonColor, Colors.white);
    });
  });

  group('microsoft default button type dark mode', () {
    final MicrosoftAuthButton microsoftAuthButton = MicrosoftAuthButton(
      onPressed: () {},
      darkMode: true,
      style: AuthButtonStyle(
        buttonType: AuthButtonType.icon,
      ),
    );

    group('check icon style value of', () {
      test('iconUrl', () {
        String iconUrl = microsoftAuthButton.getIconUrl();
        expect(iconUrl, AuthIcons.microsoft[0]);
      });
      test('iconBackground', () {
        Color? iconBackground = microsoftAuthButton.getIconBackground();
        expect(iconBackground, null);
      });
      test('iconColor', () {
        Color? iconColor = microsoftAuthButton.getIconColor();
        expect(iconColor, null);
      });
    });

    test('check button color', () {
      Color? buttonColor = microsoftAuthButton.getButtonColor();
      expect(buttonColor, AuthColors.darkMode);
    });
  });

  group('check icon button style value of', () {
    MicrosoftAuthButton microsoftAuthButton = MicrosoftAuthButton(
      onPressed: () {},
      style: AuthButtonStyle(
        buttonType: AuthButtonType.icon,
      ),
    );
    AuthButtonStyle? style = microsoftAuthButton.getButtonStyle();
    test('width', () {
      expect(style!.width, 50.0);
    });
    test('height', () {
      expect(style!.height, 50.0);
    });
    test('borderRadius', () {
      expect(style!.borderRadius, 0.0);
    });
    test('borderWidth', () {
      expect(style!.borderWidth, 1.0);
    });
    test('borderColor', () {
      expect(style!.borderColor, Color(0xff8c8c8c));
    });
    test('padding', () {
      expect(style!.padding, EdgeInsets.all(0.0));
    });
  });
}
