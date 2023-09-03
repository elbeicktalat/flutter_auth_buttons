// Copyright (c) 2022 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:auth_buttons/src/shared/core/contracts/auth_type_button.dart';
import 'package:auth_buttons/src/shared/core/widgets/auth_icon.dart';
import 'package:auth_buttons/src/shared/core/widgets/button_content.dart';
import 'package:auth_buttons/src/shared/core/widgets/shared_button.dart';
import 'package:flutter/material.dart';

class AuthIconButton extends AuthTypeButton {
  const AuthIconButton({
    required super.onPressed,
    required super.onLongPress,
    required super.onHover,
    required super.onFocusChange,
    required super.focusNode,
    required super.autofocus,
    required super.style,
    required super.isLoading,
    required super.authIcon,
    required super.materialStyle,
    required super.isDark,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: materialStyle,
        ),
      ),
      child: SharedButton(
        key: key,
        onPressed: onPressed,
        onLongPress: onLongPress,
        onHover: onHover,
        onFocusChange: onFocusChange,
        focusNode: focusNode,
        autofocus: autofocus,
        style: style,
        isDark: isDark,
        child: ButtonContent(
          key: key,
          authIcon: getIcon(),
          isLoading: isLoading,
          style: style,
        ),
      ),
    );
  }

  @override
  AuthIcon getIcon() => authIcon;
}
