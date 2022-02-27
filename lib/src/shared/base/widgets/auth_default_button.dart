// Copyright (c) 2022 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:auth_buttons/src/shared/core/contracts/auth_type_button.dart';
import 'package:auth_buttons/src/shared/core/widgets/auth_icon.dart';
import 'package:auth_buttons/src/shared/core/widgets/button_contents.dart';
import 'package:auth_buttons/src/shared/core/widgets/shared_button.dart';
import 'package:auth_buttons/src/shared/dist/auth_button_style.dart';
import 'package:flutter/material.dart';

class AuthDefaultButton extends AuthTypeButton {
  const AuthDefaultButton({
    Key? key,
    required VoidCallback? onPressed,
    required VoidCallback? onLongPress,
    required AuthButtonStyle? style,
    required bool darkMode,
    required bool isLoading,
    required bool rtl,
    required AuthIcon authIcon,
    required this.text,
  }) : super(
          key: key,
          onPressed: onPressed,
          onLongPress: onLongPress,
          style: style,
          darkMode: darkMode,
          isLoading: isLoading,
          rtl: rtl,
          authIcon: authIcon,
        );

  ///{@macro text}
  final String text;

  @override
  Widget build(BuildContext context) {
    return SharedButton(
      key: key,
      onPressed: onPressed,
      onLongPress: onLongPress,
      style: style,
      child: ButtonContents(
        key: key,
        authIcon: getIcon(),
        text: text,
        darkMode: darkMode,
        rtl: rtl,
        isLoading: isLoading,
        style: style,
      ),
    );
  }

  @override
  AuthIcon getIcon() => authIcon;
}
