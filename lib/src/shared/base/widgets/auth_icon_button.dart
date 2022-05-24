// Copyright (c) 2022 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:auth_buttons/src/shared/core/contracts/auth_type_button.dart';
import 'package:auth_buttons/src/shared/core/widgets/auth_icon.dart';
import 'package:auth_buttons/src/shared/core/widgets/button_contents.dart';
import 'package:auth_buttons/src/shared/core/widgets/shared_button.dart';
import 'package:flutter/material.dart';

class AuthIconButton extends AuthTypeButton {
  const AuthIconButton({
    super.key,
    required super.onPressed,
    required super.onLongPress,
    required super.style,
    required super.isLoading,
    required super.rtl,
    required super.authIcon,
    required super.theme,
  });

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: theme,
      child: SharedButton(
        key: key,
        onPressed: onPressed,
        onLongPress: onLongPress,
        style: style,
        child: ButtonContents(
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
