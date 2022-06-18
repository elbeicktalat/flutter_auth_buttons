// Copyright (c) 2022 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:auth_buttons/src/shared/core/contracts/auth_type_button.dart';
import 'package:auth_buttons/src/shared/core/widgets/auth_icon.dart';
import 'package:auth_buttons/src/shared/core/widgets/button_contents.dart';
import 'package:auth_buttons/src/shared/core/widgets/shared_button.dart';
import 'package:flutter/material.dart';

class AuthSecondaryButton extends AuthTypeButton {
  const AuthSecondaryButton({
    super.key,
    required super.onPressed,
    required super.onLongPress,
    required super.style,
    required super.isLoading,
    required super.textDirection,
    required super.authIcon,
    required super.materialStyle,
    required super.isDark,
    required this.text,
  });

  ///{@macro text}
  final String text;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
          elevatedButtonTheme: ElevatedButtonThemeData(
        style: materialStyle,
      )),
      child: SharedButton(
        key: key,
        onPressed: onPressed,
        onLongPress: onLongPress,
        style: style,
        isDark: isDark,
        child: ButtonContents(
          key: key,
          authIcon: getIcon(),
          text: text,
          textDirection: textDirection,
          isLoading: isLoading,
          style: style,
        ),
      ),
    );
  }

  @override
  AuthIcon getIcon() => authIcon;
}
