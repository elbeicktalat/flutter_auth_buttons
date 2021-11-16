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
  group('huawei secondary button type light mode', () {
    final HuaweiAuthButton huaweiAuthButton = HuaweiAuthButton(
      onPressed: () {},
      style: AuthButtonStyle(
        buttonType: AuthButtonType.secondary,
      ),
    );

    group('check icon style value of', () {
      test('iconUrl', () {
        String iconUrl = huaweiAuthButton.getIconUrl();
        expect(iconUrl, AuthIcons.huawei[0]);
      });
      test('iconBackground', () {
        Color? iconBackground = huaweiAuthButton.getIconBackground();
        expect(iconBackground, Colors.white);
      });
      test('iconColor', () {
        Color? iconColor = huaweiAuthButton.getIconColor();
        expect(iconColor, null);
      });
    });

    test('check text style color', () {
      Color? textStyleColor = huaweiAuthButton.getTextStyle().color;
      expect(textStyleColor, Colors.white);
    });

    test('check button color', () {
      Color? buttonColor = huaweiAuthButton.getButtonColor();
      expect(buttonColor, AuthColors.huawei);
    });
  });

  group('huawei secondary button type dark mode', () {
    final HuaweiAuthButton huaweiAuthButton = HuaweiAuthButton(
      onPressed: () {},
      style: AuthButtonStyle(
        buttonType: AuthButtonType.secondary,
      ),
      darkMode: true,
    );

    group('check icon style value of', () {
      test('iconUrl', () {
        String iconUrl = huaweiAuthButton.getIconUrl();
        expect(iconUrl, AuthIcons.huaweiWhite[0]);
      });
      test('iconBackground', () {
        Color? iconBackground = huaweiAuthButton.getIconBackground();
        expect(iconBackground, Colors.black12);
      });
      test('iconColor', () {
        Color? iconColor = huaweiAuthButton.getIconColor();
        expect(iconColor, null);
      });
    });

    test('check text style color', () {
      Color? textStyleColor = huaweiAuthButton.getTextStyle().color;
      expect(textStyleColor, Colors.white);
    });

    test('check button color', () {
      Color? buttonColor = huaweiAuthButton.getButtonColor();
      expect(buttonColor, AuthColors.darkMode);
    });
  });

  group('huawei check default button style value of', () {
    HuaweiAuthButton huaweiAuthButton = HuaweiAuthButton(
      onPressed: () {},
      style: AuthButtonStyle(
        buttonType: AuthButtonType.secondary,
      ),
    );
    AuthButtonStyle? style = huaweiAuthButton.getButtonStyle();
    test('separator', () {
      expect(style!.separator, 10.0);
    });
    test('height', () {
      expect(style!.height, 40.0);
    });
    test('borderRadius', () {
      expect(style!.borderRadius, 8.0);
    });
  });

  test('huawei check text style font family', () {
    final HuaweiAuthButton huaweiAuthButton = HuaweiAuthButton(
      onPressed: () {},
      style: AuthButtonStyle(
        buttonType: AuthButtonType.secondary,
      ),
    );
    TextStyle textStyle = huaweiAuthButton.getTextStyle();
    expect(
      textStyle.fontFamily,
      GoogleFonts.roboto(
        fontWeight: FontWeight.w700,
      ).fontFamily,
    );
  });
}
