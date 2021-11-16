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
  group('microsoft default button type light mode', () {
    final MicrosoftAuthButton microsoftAuthButton =
        MicrosoftAuthButton(onPressed: () {});

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

    test('check text style color', () {
      Color? textStyleColor = microsoftAuthButton.getTextStyle().color;
      expect(textStyleColor, Color(0xff5e5e5e));
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

    test('check text style color', () {
      Color? textStyleColor = microsoftAuthButton.getTextStyle().color;
      expect(textStyleColor, Colors.white);
    });

    test('check button color', () {
      Color? buttonColor = microsoftAuthButton.getButtonColor();
      expect(buttonColor, AuthColors.darkMode);
    });
  });

  group('microsoft check default button style value of', () {
    MicrosoftAuthButton microsoftAuthButton =
        MicrosoftAuthButton(onPressed: () {});
    AuthButtonStyle? style = microsoftAuthButton.getButtonStyle();
    test('separator', () {
      expect(style!.separator, 12.0);
    });
    test('height', () {
      expect(style!.height, 40.0);
    });
    test('borderRadius', () {
      expect(style!.borderRadius, null);
    });
    test('borderWidth', () {
      expect(style!.borderWidth, 1.0);
    });
    test('borderColor', () {
      expect(style!.borderColor, Color(0xff8c8c8c));
    });
    test('padding', () {
      expect(style!.padding, EdgeInsets.symmetric(horizontal: 12.0));
    });
  });

  test('microsoft check text style font size', () {
    final MicrosoftAuthButton microsoftAuthButton =
        MicrosoftAuthButton(onPressed: () {});
    double? fontSize = microsoftAuthButton.getTextStyle().fontSize;
    expect(fontSize, 16.0);
  });

  test('microsoft check text style font family', () {
    final MicrosoftAuthButton microsoftAuthButton =
        MicrosoftAuthButton(onPressed: () {});
    TextStyle textStyle = microsoftAuthButton.getTextStyle();
    expect(
      textStyle.fontFamily,
      GoogleFonts.lato(
        fontWeight: FontWeight.w700,
      ).fontFamily,
    );
  });
}
