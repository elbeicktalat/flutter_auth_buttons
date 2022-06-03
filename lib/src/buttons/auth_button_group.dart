import 'package:auth_buttons/auth_buttons.dart';
import 'package:auth_buttons/src/shared/core/widgets/inherited_auth_button.dart';
import 'package:auth_buttons/src/shared/dist/auth_button.dart';
import 'package:flutter/material.dart';

class AuthButtonGroup extends StatelessWidget {
  const AuthButtonGroup({
    super.key,
    required this.buttons,
    this.style,
    this.rtl = false,
    this.materialStyle,
    this.orientation = Axis.horizontal,
    this.spacing,
    this.runSpacing,
    this.alignment = WrapAlignment.start,
    this.runAlignment = WrapAlignment.start,
    this.crossAxisAlignment = WrapCrossAlignment.start,
    this.direction = VerticalDirection.down,
  });

  final bool rtl;
  final List<AuthButton> buttons;
  final AuthButtonStyle? style;
  final ButtonStyle? materialStyle;
  final double? spacing;
  final double? runSpacing;
  final Axis orientation;
  final WrapAlignment alignment;
  final WrapAlignment runAlignment;
  final WrapCrossAlignment crossAxisAlignment;
  final VerticalDirection direction;

  @override
  Widget build(BuildContext context) {
    return InheritedAuthButton(
      style: style,
      rtl: rtl,
      materialStyle: materialStyle,
      child: Wrap(
        spacing: spacing ?? _getSpacing(),
        runSpacing: runSpacing ?? _getRunSpacing(),
        alignment: alignment,
        runAlignment: runAlignment,
        crossAxisAlignment: crossAxisAlignment,
        direction: orientation,
        verticalDirection: direction,
        children: buttons,
      ),
    );
  }

  double _getSpacing() {
    if (orientation == Axis.vertical) {
      if (style!.buttonType != AuthButtonType.icon) {
        return 0.0;
      }
      return 8.0;
    }
    return 8.0;
  }

  double _getRunSpacing() {
    if (orientation != Axis.horizontal) {
      if (style!.buttonType != AuthButtonType.icon) {
        return 0.0;
      }
      return 8.0;
    }
    if (style!.buttonType != AuthButtonType.icon) {
      return 0.0;
    }
    return 8.0;
  }
}
