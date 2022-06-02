import 'package:auth_buttons/auth_buttons.dart';
import 'package:auth_buttons/src/shared/core/widgets/inherited_auth_button.dart';
import 'package:auth_buttons/src/shared/dist/auth_button.dart';
import 'package:flutter/material.dart';

class AuthButtonGroup extends StatelessWidget {
  const AuthButtonGroup({
    super.key,
    required this.buttons,
    this.gap = const SizedBox(height: 12),
    this.onIcon,
    this.onSecondary,
    this.style,
    this.rtl = false,
    this.isLoading = false,
    this.materialStyle,
  });

  final List<AuthButton> buttons;
  final SizedBox gap;
  final AuthButtonStyle? onIcon;
  final AuthButtonStyle? onSecondary;
  final AuthButtonStyle? style;
  final bool rtl;
  final bool isLoading;
  final ButtonStyle? materialStyle;

  @override
  Widget build(BuildContext context) {
    List<Widget> _children = [];
    for (var button in buttons) {
      _children.add(button);
      _children.add(gap);
    }
    return InheritedAuthButton(
      style: style,
      rtl: rtl,
      isLoading: isLoading,
      materialStyle: materialStyle,
      child: Column(
        children: _children,
      ),
    );
  }
}
