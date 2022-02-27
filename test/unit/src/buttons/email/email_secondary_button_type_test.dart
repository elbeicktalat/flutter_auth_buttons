// Copyright (c) 2021 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:auth_buttons/auth_buttons.dart';
import 'package:auth_buttons/src/shared/core/widgets/auth_icon.dart';
import 'package:auth_buttons/src/utils/auth_colors.dart';
import 'package:auth_buttons/src/utils/auth_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  group('email secondary button type light mode', () {
    final EmailAuthButton emailAuthButton = EmailAuthButton(
      onPressed: () {},
      style: const AuthButtonStyle(
        buttonType: AuthButtonType.secondary,
      ),
    );

    group('check icon style value of', () {
      test('iconUrl', () {
        AuthIcon icon = emailAuthButton.getIcon();
        expect(icon.iconUrl, AuthIcons.email[0]);
      });
      test('iconBackground', () {
        Color? iconBackground = emailAuthButton.getIconBackground();
        expect(iconBackground, Colors.white);
      });
      test('iconColor', () {
        Color? iconColor = emailAuthButton.getIconColor();
        expect(iconColor, null);
      });
    });

    test('check text style color', () {
      Color? textStyleColor = emailAuthButton.getTextStyle().color;
      expect(textStyleColor, Colors.white);
    });

    test('check button color', () {
      Color? buttonColor = emailAuthButton.getButtonColor();
      expect(buttonColor, Colors.teal);
    });
  });

  group('email secondary button type dark mode', () {
    final EmailAuthButton emailAuthButton = EmailAuthButton(
      onPressed: () {},
      style: const AuthButtonStyle(
        buttonType: AuthButtonType.secondary,
      ),
      darkMode: true,
    );

    group('check icon style value of', () {
      test('iconUrl', () {
        AuthIcon icon = emailAuthButton.getIcon();
        expect(icon.iconUrl, AuthIcons.email[0]);
      });
      test('iconBackground', () {
        Color? iconBackground = emailAuthButton.getIconBackground();
        expect(iconBackground, Colors.black12);
      });
      test('iconColor', () {
        Color? iconColor = emailAuthButton.getIconColor();
        expect(iconColor, null);
      });
    });

    test('check text style color', () {
      Color? textStyleColor = emailAuthButton.getTextStyle().color;
      expect(textStyleColor, Colors.white);
    });

    test('check button color', () {
      Color? buttonColor = emailAuthButton.getButtonColor();
      expect(buttonColor, AuthColors.darkMode);
    });
  });

  group('email check default button style value of', () {
    EmailAuthButton emailAuthButton = EmailAuthButton(
      onPressed: () {},
      style: const AuthButtonStyle(
        buttonType: AuthButtonType.secondary,
      ),
    );
    AuthButtonStyle? style = emailAuthButton.getButtonStyle();
    test('separator', () {
      expect(style!.separator, 12.0);
    });
    test('height', () {
      expect(style!.height, 40.0);
    });
    test('borderRadius', () {
      expect(style!.borderRadius, 8.0);
    });
  });

  test('email check text style font family', () {
    final EmailAuthButton emailAuthButton = EmailAuthButton(
      onPressed: () {},
      style: const AuthButtonStyle(
        buttonType: AuthButtonType.secondary,
      ),
    );
    TextStyle textStyle = emailAuthButton.getTextStyle();
    expect(
      textStyle.fontFamily,
      GoogleFonts.roboto(
        fontWeight: FontWeight.w600,
      ).fontFamily,
    );
  });
}
