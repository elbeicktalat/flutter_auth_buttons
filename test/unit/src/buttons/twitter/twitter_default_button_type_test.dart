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
  group('twitter default button type light mode', () {
    final TwitterAuthButton twitterAuthButton =
        TwitterAuthButton(onPressed: () {});

    group('check icon style value of', () {
      test('iconUrl', () {
        String iconUrl = twitterAuthButton.getIconUrl();
        expect(iconUrl, AuthIcons.twitterWhite[0]);
      });
      test('iconBackground', () {
        Color? iconBackground = twitterAuthButton.getIconBackground();
        expect(iconBackground, null);
      });
      test('iconColor', () {
        Color? iconColor = twitterAuthButton.getIconColor();
        expect(iconColor, null);
      });
    });

    test('check text style color', () {
      Color? textStyleColor = twitterAuthButton.getTextStyle().color;
      expect(textStyleColor, Colors.white);
    });

    test('check button color', () {
      Color? buttonColor = twitterAuthButton.getButtonColor();
      expect(buttonColor, Colors.blue);
    });
  });

  group('twitter default button type dark mode', () {
    final TwitterAuthButton twitterAuthButton = TwitterAuthButton(
      onPressed: () {},
      darkMode: true,
    );

    group('check icon style value of', () {
      test('iconUrl', () {
        String iconUrl = twitterAuthButton.getIconUrl();
        expect(iconUrl, AuthIcons.twitterWhite[0]);
      });
      test('iconBackground', () {
        Color? iconBackground = twitterAuthButton.getIconBackground();
        expect(iconBackground, null);
      });
      test('iconColor', () {
        Color? iconColor = twitterAuthButton.getIconColor();
        expect(iconColor, null);
      });
    });

    test('check text style color', () {
      Color? textStyleColor = twitterAuthButton.getTextStyle().color;
      expect(textStyleColor, Colors.white);
    });

    test('check button color', () {
      Color? buttonColor = twitterAuthButton.getButtonColor();
      expect(buttonColor, AuthColors.darkMode);
    });
  });

  group('twitter check default button style value of', () {
    TwitterAuthButton twitterAuthButton = TwitterAuthButton(onPressed: () {});
    AuthButtonStyle? style = twitterAuthButton.getButtonStyle();
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

  test('twitter check text style font family', () {
    final TwitterAuthButton twitterAuthButton =
        TwitterAuthButton(onPressed: () {});
    TextStyle textStyle = twitterAuthButton.getTextStyle();
    expect(
      textStyle.fontFamily,
      GoogleFonts.roboto(
        fontWeight: FontWeight.w700,
      ).fontFamily,
    );
  });
}
