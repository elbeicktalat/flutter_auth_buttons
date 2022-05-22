import 'package:auth_buttons/auth_buttons.dart';
import 'package:auth_buttons/src/shared/core/widgets/inherited_auth_button.dart';
import 'package:auth_buttons/src/shared/dist/auth_button.dart';
import 'package:flutter/material.dart';

class AuthButtonGroup extends StatelessWidget {
  const AuthButtonGroup({
    Key? key,
    required this.buttons,
    this.gap = const SizedBox(height: 12),
    this.onIcon,
    this.onSecondary,
    this.style,
    this.rtl = false,
    this.isLoading = false,
  }) : super(key: key);

  final List<AuthButton> buttons;
  final SizedBox gap;
  final AuthButtonStyle? onIcon;
  final AuthButtonStyle? onSecondary;
  final AuthButtonStyle? style;
  final bool rtl;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    List<Widget> _children = [];
    for (var button in buttons) {
      _children.add(button);
      _children.add(gap);
    }
    return InheritedAuthButton(
      onIcon: onIcon,
      onSecondary: onSecondary,
      style: style,
      rtl: rtl,
      isLoading: isLoading,
      child: Column(
        children: _children,
      ),
    );
  }
}
