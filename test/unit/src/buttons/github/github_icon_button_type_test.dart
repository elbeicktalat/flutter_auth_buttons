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
  group('github icon button type light mode', () {
    final GithubAuthButton githubAuthButton = GithubAuthButton(
      onPressed: () {},
      style: const AuthButtonStyle(
        buttonType: AuthButtonType.icon,
      ),
    );

    group('check icon style value of', () {
      test('iconUrl', () {
        AuthIcon icon = githubAuthButton.getIcon();
        expect(icon.iconUrl, AuthIcons.github[0]);
      });
      test('iconBackground', () {
        Color? iconBackground = githubAuthButton.getIconBackground();
        expect(iconBackground, null);
      });
      test('iconColor', () {
        Color? iconColor = githubAuthButton.getIconColor();
        expect(iconColor, null);
      });
    });

    test('check button color', () {
      Color? buttonColor = githubAuthButton.getButtonColor();
      expect(buttonColor, AuthColors.github);
    });
  });

  group('github default button type dark mode', () {
    final GithubAuthButton githubAuthButton = GithubAuthButton(
      onPressed: () {},
      darkMode: true,
      style: const AuthButtonStyle(
        buttonType: AuthButtonType.icon,
      ),
    );

    group('check icon style value of', () {
      test('iconUrl', () {
        AuthIcon icon = githubAuthButton.getIcon();
        expect(icon.iconUrl, AuthIcons.github[0]);
      });
      test('iconBackground', () {
        Color? iconBackground = githubAuthButton.getIconBackground();
        expect(iconBackground, null);
      });
      test('iconColor', () {
        Color? iconColor = githubAuthButton.getIconColor();
        expect(iconColor, null);
      });
    });

    test('check button color', () {
      Color? buttonColor = githubAuthButton.getButtonColor();
      expect(buttonColor, AuthColors.darkMode);
    });
  });

  group('check icon button style value of', () {
    GithubAuthButton githubAuthButton = GithubAuthButton(
      onPressed: () {},
      style: const AuthButtonStyle(
        buttonType: AuthButtonType.icon,
      ),
    );
    AuthButtonStyle? style = githubAuthButton.getButtonStyle();
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
