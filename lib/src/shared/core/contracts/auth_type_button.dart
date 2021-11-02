import 'package:auth_buttons/src/shared/dist/auth_button_style.dart';
import 'package:flutter/material.dart';

abstract class AuthTypeButton extends StatelessWidget {
  const AuthTypeButton({
    Key? key,
    required this.onPressed,
    required this.onLongPress,
    required this.style,
    required this.darkMode,
    required this.isLoading,
    required this.rtl,
    required this.buttonColor,
    required this.iconUrl,
    required this.progressIndicatorValueColor,
  }) : super(key: key);

  final VoidCallback? onPressed;
  final VoidCallback? onLongPress;
  final AuthButtonStyle? style;
  final bool darkMode;
  final bool isLoading;
  final bool rtl;
  final Color buttonColor;
  final String iconUrl;
  final Color? progressIndicatorValueColor;

  Color getButtonColor();

  String getIconUrl();

  Color? getProgressIndicatorValueColor();

  @override
  Widget build(BuildContext context);
}
