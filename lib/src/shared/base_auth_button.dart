import 'package:auth_buttons/src/shared/auth_button_style.dart';
import 'package:flutter/material.dart';

abstract class BaseAuthButton extends StatelessWidget {
  const BaseAuthButton({
    Key? key,
    required this.onPressed,
    required this.onLongPress,
    required this.style,
    required this.darkMode,
    required this.isLoading,
    required this.rtl,
  }) : super(key: key);

  final VoidCallback? onPressed;
  final VoidCallback? onLongPress;
  final AuthButtonStyle? style;
  final bool darkMode;
  final bool isLoading;
  final bool rtl;

  Color getButtonColor();

  String getIconUrl();

  Color? getProgressIndicatorValueColor();

  @override
  Widget build(BuildContext context);
}
