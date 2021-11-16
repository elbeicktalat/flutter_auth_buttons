// Copyright (c) 2021 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:auth_buttons/auth_buttons.dart';
import 'package:auth_buttons/src/utils/auth_colors.dart';
import 'package:auth_buttons/src/utils/auth_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  group('google default button type light mode', () {
    final GoogleAuthButton googleAuthButton =
        GoogleAuthButton(onPressed: () {});

    group('check icon style value of', () {
      test('iconUrl', () {
        String iconUrl = googleAuthButton.getIconUrl();
        expect(iconUrl, AuthIcons.google[0]);
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

    test('check text style color', () {
      Color? textStyleColor = googleAuthButton.getTextStyle().color;
      expect(textStyleColor, Colors.black);
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
    );

    group('check icon style value of', () {
      test('iconUrl', () {
        String iconUrl = googleAuthButton.getIconUrl();
        expect(iconUrl, AuthIcons.google[0]);
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

    test('check text style color', () {
      Color? textStyleColor = googleAuthButton.getTextStyle().color;
      expect(textStyleColor, Colors.white);
    });

    test('check button color', () {
      Color? buttonColor = googleAuthButton.getButtonColor();
      expect(buttonColor, AuthColors.darkMode);
    });
  });

  group('google check default button style value of', () {
    GoogleAuthButton googleAuthButton = GoogleAuthButton(onPressed: () {});
    AuthButtonStyle? style = googleAuthButton.getButtonStyle();
    test('separator', () {
      expect(style!.separator, 24.0);
    });
    test('height', () {
      expect(style!.height, 40.0);
    });
    test('borderRadius', () {
      expect(style!.borderRadius, 8.0);
    });
  });

  test('google check text style font family', () {
    final GoogleAuthButton googleAuthButton =
        GoogleAuthButton(onPressed: () {});
    TextStyle textStyle = googleAuthButton.getTextStyle();
    expect(
      textStyle.fontFamily,
      GoogleFonts.roboto(
        fontWeight: FontWeight.w500,
      ).fontFamily,
    );
  });
}
