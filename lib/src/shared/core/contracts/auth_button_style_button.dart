// Copyright (c) 2021 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:auth_buttons/src/shared/auth_button_style.dart';
import 'package:auth_buttons/src/shared/core/contracts/resolving_material_style.dart';
import 'package:auth_buttons/src/shared/core/widgets/auth_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show SchedulerBinding;

/// The core interface of all auth buttons.
///
/// See also:
///
///  * [AuthButton], the common implementation of all auth buttons.
///  * [ResolvingMaterialStyle], the mixin which provides the resolve methods.
///
abstract class AuthButtonStyleButton extends StatelessWidget
    with ResolvingMaterialStyle {
  const AuthButtonStyleButton({
    super.key,
    required this.onPressed,
    required this.onLongPress,
    required this.style,
    required this.text,
    required this.themeMode,
    required this.isLoading,
    required this.textDirection,
    required this.materialStyle,
  });

  /// {@template onPressed}
  ///
  /// Called when the button is tapped.
  ///
  /// If this callback and [onLongPress] are null, then the button will be disabled.
  ///
  /// See also:
  ///
  ///  * [enabled], which is true if the button is enabled.
  ///
  /// {@endtemplate}
  final VoidCallback? onPressed;

  /// {@template onLongPress}
  ///
  /// Called when the button is long-pressed.
  ///
  /// If this callback and [onPressed] are null, then the button will be disabled.
  ///
  /// See also:
  ///
  ///  * [enabled], which is true if the button is enabled.
  ///
  /// {@endtemplate}
  final VoidCallback? onLongPress;

  /// {@template style}
  ///
  /// Customizes this button's appearance.
  ///
  /// This contains everything related to the button appearance,
  /// buttonColor, iconSize, width, and others.
  ///
  /// See also:
  ///
  ///  * [materialStyle], the visual properties of material buttons.
  ///
  /// {@endtemplate}
  final AuthButtonStyle? style;

  /// {@template text}
  ///
  /// The text within the button.
  ///
  /// {@endtemplate}
  final String? text;

  /// {@template isLoading}
  ///
  /// Show [ProgressIndicator] if this value is true.
  ///
  /// See also:
  ///
  ///  * [AuthButtonProgressIndicatorType], which define the progress indicator type,
  ///  available types are: [CircularProgressIndicator] and [LinearProgressIndicator].
  ///
  /// {@endtemplate}
  final bool isLoading;

  /// {@template textDirection}
  ///
  /// A direction in which text flows.
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/buttons/google.png)
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/rtl.png)
  ///
  /// {@endtemplate}
  final TextDirection textDirection;

  /// Describes which theme will be used for the [AuthButton]s.
  ///
  /// By default its sets to [ThemeMode.system] in order to get the system [Brightness].
  final ThemeMode themeMode;

  ///{@template materialStyle}
  ///
  /// Customizes this button's appearance within the [ButtonStyle].
  ///
  /// See also:
  ///
  ///  * [style], the [AuthButton]s dedicated visual properties.
  ///
  /// {@endtemplate}
  final ButtonStyle? materialStyle;

  /// {@template getIcon}
  ///
  /// The method which returns the [AuthIcon].
  ///
  /// {@endtemplate}
  AuthIcon getIcon(BuildContext context);

  /// {@template getButtonStyle}
  ///
  /// Returns an [AuthButtonStyle], this method makes more easy buttons styling.
  ///
  /// {@endtemplate}
  AuthButtonStyle? getButtonStyle();

  /// {@template getButtonStyle}
  ///
  /// Returns a material [ButtonStyle], this method makes more easy buttons styling.
  ///
  /// {@endtemplate}
  ButtonStyle? getMaterialStyle(BuildContext context);

  /// {@template getProgressIndicatorColor}
  ///
  /// Returns the color of the [ProgressIndicator]s.
  ///
  /// {@endtemplate}
  Color? getProgressIndicatorColor();

  /// {@template enabled}
  ///
  /// Define if the button is enabled or disabled.
  ///
  /// Buttons are disabled by default. To enable a button, set its [onPressed]
  /// or [onLongPress] properties to a non-null value.
  ///
  /// {@endtemplate}
  bool get enabled => onPressed != null || onLongPress != null;

  /// {@template isDark}
  ///
  /// Define if the button is in dark or light appearance, follows the system [Brightness] by default.
  ///
  /// {@endtemplate}
  bool get isDark {
    if (themeMode == ThemeMode.dark) return true;
    if (themeMode == ThemeMode.light) return false;
    return SchedulerBinding.instance.window.platformBrightness ==
        Brightness.dark;
  }

  @override
  Widget build(BuildContext context);
}
