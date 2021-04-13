import 'package:auth_buttons/src/shared/auth_button_style.dart';
import 'package:auth_buttons/src/shared/auth_button_style_button.dart';
import 'package:flutter/material.dart';

class AuthButton extends AuthButtonStyleButton {
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
