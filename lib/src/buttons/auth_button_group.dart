import 'package:auth_buttons/auth_buttons.dart';
import 'package:auth_buttons/src/shared/core/widgets/inherited_auth_button.dart';
import 'package:auth_buttons/src/shared/dist/auth_button.dart';
import 'package:flutter/material.dart';

class AuthButtonGroup extends StatelessWidget {
  const AuthButtonGroup({
    super.key,
    required this.buttons,
    this.style,
    this.textDirection = TextDirection.ltr,
    this.materialStyle,
    this.orientation = Axis.horizontal,
    this.spacing,
    this.runSpacing,
    this.alignment = WrapAlignment.start,
    this.runAlignment = WrapAlignment.start,
    this.crossAxisAlignment = WrapCrossAlignment.start,
    this.direction = VerticalDirection.down,
  }) : assert(buttons.length >= 2, 'buttons must be more than one');

  final TextDirection textDirection;
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
      textDirection: textDirection,
      materialStyle: materialStyle,
      child: Wrap(
        spacing: spacing ?? _getSpacing(),
        runSpacing: runSpacing ?? _getRunSpacing(),
        alignment: alignment,
        runAlignment: runAlignment,
        crossAxisAlignment: crossAxisAlignment,
        direction: orientation,
        verticalDirection: direction,
        children: getChildren() ?? buttons,
      ),
    );
  }

  @visibleForTesting
  List<Widget>? getChildren() {
    final List<Widget> _fittedButtons = [];
    for (var button in buttons) {
      _fittedButtons.add(
        SizedBox(
          width: style?.width,
          height: style?.height,
          child: FittedBox(
            fit: BoxFit.fill,
            child: button,
          ),
        ),
      );
    }

    if (style?.buttonType != AuthButtonType.icon) {
      return _fittedButtons;
    }
    return null;
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
