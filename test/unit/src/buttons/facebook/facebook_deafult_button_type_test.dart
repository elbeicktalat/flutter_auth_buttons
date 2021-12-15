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
  group('facebook default button type light mode', () {
    final FacebookAuthButton facebookAuthButton =
        FacebookAuthButton(onPressed: () {});

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

    test('check text style color', () {
      Color? textStyleColor = facebookAuthButton.getTextStyle().color;
      expect(textStyleColor, Colors.white);
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

    test('check text style color', () {
      Color? textStyleColor = facebookAuthButton.getTextStyle().color;
      expect(textStyleColor, Colors.white);
    });

    test('check button color', () {
      Color? buttonColor = facebookAuthButton.getButtonColor();
      expect(buttonColor, AuthColors.darkMode);
    });
  });

  group('facebook check default button style value of', () {
    FacebookAuthButton facebookAuthButton =
        FacebookAuthButton(onPressed: () {});
    AuthButtonStyle? style = facebookAuthButton.getButtonStyle();
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

  test('facebook check text style font family', () {
    final FacebookAuthButton facebookAuthButton =
        FacebookAuthButton(onPressed: () {});
    TextStyle textStyle = facebookAuthButton.getTextStyle();
    expect(
      textStyle.fontFamily,
      GoogleFonts.roboto(
        fontWeight: FontWeight.w700,
      ).fontFamily,
    );
  });
}
