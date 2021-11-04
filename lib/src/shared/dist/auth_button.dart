// Copyright (c) 2021 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:auth_buttons/src/shared/base/contracts/base_auth_button.dart';
import 'package:auth_buttons/src/shared/dist/auth_button_style.dart';
import 'package:flutter/widgets.dart';

abstract class AuthButton extends BaseAuthButton {
  const AuthButton({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    AuthButtonStyle? style,
    String? text,
    bool darkMode = false,
    bool isLoading = false,
    bool rtl = false,
  }) : super(
          key: key,
          onPressed: onPressed,
          onLongPress: onLongPress,
          style: style ?? const AuthButtonStyle(),
          text: text,
          darkMode: darkMode,
          isLoading: isLoading,
          rtl: rtl,
        );
}
