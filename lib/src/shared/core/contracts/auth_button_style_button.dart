// Copyright (c) 2021 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:auth_buttons/src/shared/dist/auth_button_style.dart';
import 'package:flutter/widgets.dart';

abstract class AuthButtonStyleButton extends StatelessWidget {
  const AuthButtonStyleButton({
    Key? key,
    required this.onPressed,
    required this.onLongPress,
    required this.style,
    required this.text,
    required this.darkMode,
    required this.isLoading,
    required this.rtl,
  }) : super(key: key);

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

  /// {@template getButtonColor}
  ///
  ///**[getButtonColor()]** a method which returns the **buttonColor**.
  ///
  /// For more info about **ButtonColor** take a look on
  /// [ButtonColor](https://pub.dev/documentation/auth_buttons/latest/auth_buttons/AuthButtonStyle/buttonColor.html)
  ///
  /// {@endtemplate}
  Color getButtonColor();

  /// {@template getIconBackground}
  ///
  ///**[getIconBackground()]** a method which returns the **iconBackground**.
  ///
  /// For more info about **iconBackground** take a look on
  /// [iconBackground](https://pub.dev/documentation/auth_buttons/latest/auth_buttons/AuthButtonStyle/iconBackground.html)
  ///
  /// {@endtemplate}
  Color? getIconBackground();

  /// {@template getTextStyle}
  ///
  ///**[getTextStyle()]** a method which returns the **textStyle**.
  ///
  /// For more info about **textStyle** take a look on
  /// [textStyle](https://pub.dev/documentation/auth_buttons/latest/auth_buttons/AuthButtonStyle/textStyle.html)
  ///
  /// {@endtemplate}
  TextStyle getTextStyle();

  /// {@template getIconUrl}
  ///
  ///**[getIconUrl()]** a method which returns the **iconUrl**.
  ///
  /// {@endtemplate}
  String getIconUrl();

  /// {@template getIconColor}
  ///
  ///**[getIconColor()]** a method which returns the **iconColor**.
  ///
  /// All **icons** are NOT colored by default.
  ///
  /// For more info about **iconColor** take a look on
  /// [iconColor](https://pub.dev/documentation/auth_buttons/latest/auth_buttons/AuthButtonStyle/iconColor.html)
  ///
  /// {@endtemplate}
  Color? getIconColor();

  /// {@template getProgressIndicatorValueColor}
  ///
  ///**[getProgressIndicatorValueColor()]** a method where returns the **progressIndicatorValueColor**.
  ///
  /// {@endtemplate}
  Color? getProgressIndicatorValueColor();

  /// {@template getButtonStyle}
  ///
  ///**[getButtonStyle()]** returns **style** for all button types based on **AuthButtonType**.
  ///
  /// {@endtemplate}
  AuthButtonStyle? getButtonStyle();

  /// {@template getDefaultButtonStyle}
  ///
  ///**[getDefaultButtonStyle()]** returns **style** for the **default button type**.
  ///
  /// {@endtemplate}
  AuthButtonStyle? getDefaultButtonStyle();

  /// {@template getSecondaryButtonStyle}
  ///
  ///**[getSecondaryButtonStyle()]** returns **style** for the **secondary button type**.
  ///
  /// {@endtemplate}
  AuthButtonStyle? getSecondaryButtonStyle();

  /// {@template getIconButtonStyle}
  ///
  ///**[getIconButtonStyle()]** returns **style** for the **icon button type**.
  ///
  /// {@endtemplate}
  AuthButtonStyle? getIconButtonStyle();

  /// {@template enabled}
  ///
  /// Define if the button is enabled or disabled.
  ///
  /// Buttons are disabled by default. To enable a button, set its **[onPressed]**
  /// or **[onLongPress]** properties to a non-null value.
  ///
  /// {@endtemplate}
  bool get enabled => onPressed != null || onLongPress != null;

  @override
  Widget build(BuildContext context);
}
