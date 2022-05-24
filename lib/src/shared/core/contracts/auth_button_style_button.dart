// Copyright (c) 2021 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:auth_buttons/src/shared/core/widgets/auth_icon.dart';
import 'package:auth_buttons/src/shared/dist/auth_button_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';

abstract class AuthButtonStyleButton extends StatelessWidget {
  const AuthButtonStyleButton({
    super.key,
    required this.onPressed,
    required this.onLongPress,
    required this.style,
    required this.text,
    @Deprecated(
      'Use ThemeMode instead. '
      'This property has no more effect. '
      'This feature was deprecated after v3.0.0',
    )
        required this.darkMode,
    required this.themeMode,
    required this.isLoading,
    required this.rtl,
  });

  /// {@template onPressed}
  ///
  ///**[onPressed]** is a void function well be called when the button is pressed.
  ///
  /// {@endtemplate}
  final VoidCallback? onPressed;

  /// {@template onLongPress}
  ///
  ///**[onLongPress]** is a void function well be called when the button is pressed for long.
  ///
  /// {@endtemplate}
  final VoidCallback? onLongPress;

  /// {@template style}
  ///
  ///**[style]** define the entire button style, like buttonColor, iconSize,
  /// width, and other.
  ///
  /// {@endtemplate}
  final AuthButtonStyle? style;

  /// {@template text}
  ///
  ///**[text]** Define text in the button.
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/style-default.png)
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/text.png)
  ///
  /// {@endtemplate}
  final String? text;

  /// {@template darkMode}
  ///
  ///**[darkMode]** Define if the theme of the button is dark or light,
  ///the default value is [false].
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/style-default.png)
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/dark-mode-default.png)
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/style-icon.png)
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/dark-mode-icon.png)
  ///
  /// {@endtemplate}
  @Deprecated(
    'Use ThemeMode instead. '
    'This property has no more effect. '
    'This feature was deprecated after v3.0.0',
  )
  final bool darkMode;

  /// {@template isLoading}
  ///
  ///**[isLoading]** A boolean variable which define if something is loading,
  /// if so will be show a progress indicator.
  ///
  /// {@endtemplate}
  final bool isLoading;

  /// {@template rtl}
  ///
  ///**[rtl]** A boolean variable needed to support the **right to left** languages.
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/buttons/google.png)
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/rtl.png)
  ///
  /// {@endtemplate}
  final bool rtl;

  /// Describes which theme will be used for the [AuthButton].
  ///
  /// By default its sets to [ThemeMode.system] in order to get the system [Brightness].
  final ThemeMode themeMode;

  /// {@template getIcon}
  ///
  ///**[getIcon()]** a method which returns the **authIcon**.
  ///
  /// {@endtemplate}
  AuthIcon getIcon();

  /// {@template getButtonStyle}
  ///
  ///**[getButtonStyle()]** returns **style** for all button types based on **AuthButtonType**.
  ///
  /// {@endtemplate}
  AuthButtonStyle? getButtonStyle();

  /// {@template theme}
  ///
  /// Defines the configuration of the overall visual [Theme] for a [AuthButton].
  ///
  /// {@endtemplate}
  ThemeData getTheme();

  /// {@template enabled}
  ///
  /// Define if the button is enabled or disabled.
  ///
  /// Buttons are disabled by default. To enable a button, set its **[onPressed]**
  /// or **[onLongPress]** properties to a non-null value.
  ///
  /// {@endtemplate}
  bool get enabled => onPressed != null || onLongPress != null;

  /// {@template isDarkMode}
  ///
  /// Define if the button is in dark or light mode, follows the system [Brightness] by default.
  ///
  /// {@endtemplate}
  bool get isDarkMode =>
      SchedulerBinding.instance.window.platformBrightness == Brightness.dark;

  @override
  Widget build(BuildContext context);
}
