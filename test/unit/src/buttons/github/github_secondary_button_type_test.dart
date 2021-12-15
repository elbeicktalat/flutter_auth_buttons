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
  group('github secondary button type light mode', () {
    final GithubAuthButton githubAuthButton = GithubAuthButton(
      onPressed: () {},
      style: AuthButtonStyle(
        buttonType: AuthButtonType.secondary,
      ),
    );

    group('check icon style value of', () {
      test('iconUrl', () {
        AuthIcon icon = githubAuthButton.getIcon();
        expect(icon.iconUrl, AuthIcons.github[0]);
      });
      test('iconBackground', () {
        Color? iconBackground = githubAuthButton.getIconBackground();
        expect(iconBackground, Colors.white);
      });
      test('iconColor', () {
        Color? iconColor = githubAuthButton.getIconColor();
        expect(iconColor, null);
      });
    });

    test('check text style color', () {
      Color? textStyleColor = githubAuthButton.getTextStyle().color;
      expect(textStyleColor, Colors.white);
    });

    test('check button color', () {
      Color? buttonColor = githubAuthButton.getButtonColor();
      expect(buttonColor, AuthColors.github);
    });
  });

  group('github secondary button type dark mode', () {
    final GithubAuthButton githubAuthButton = GithubAuthButton(
      onPressed: () {},
      style: AuthButtonStyle(
        buttonType: AuthButtonType.secondary,
      ),
      darkMode: true,
    );

    group('check icon style value of', () {
      test('iconUrl', () {
        AuthIcon icon = githubAuthButton.getIcon();
        expect(icon.iconUrl, AuthIcons.github[0]);
      });
      test('iconBackground', () {
        Color? iconBackground = githubAuthButton.getIconBackground();
        expect(iconBackground, Colors.black12);
      });
      test('iconColor', () {
        Color? iconColor = githubAuthButton.getIconColor();
        expect(iconColor, null);
      });
    });

    test('check text style color', () {
      Color? textStyleColor = githubAuthButton.getTextStyle().color;
      expect(textStyleColor, Colors.white);
    });

    test('check button color', () {
      Color? buttonColor = githubAuthButton.getButtonColor();
      expect(buttonColor, AuthColors.darkMode);
    });
  });

  group('github check default button style value of', () {
    GithubAuthButton githubAuthButton = GithubAuthButton(
      onPressed: () {},
      style: AuthButtonStyle(
        buttonType: AuthButtonType.secondary,
      ),
    );
    AuthButtonStyle? style = githubAuthButton.getButtonStyle();
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

  test('github check text style font family', () {
    final GithubAuthButton githubAuthButton = GithubAuthButton(
      onPressed: () {},
      style: AuthButtonStyle(
        buttonType: AuthButtonType.secondary,
      ),
    );
    TextStyle textStyle = githubAuthButton.getTextStyle();
    expect(
      textStyle.fontFamily,
      GoogleFonts.roboto(
        fontWeight: FontWeight.w700,
      ).fontFamily,
    );
  });
}
