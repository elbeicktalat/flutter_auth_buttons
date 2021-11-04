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

  ///**[onPressed]** is a void function well be called when the button is pressed.
  final VoidCallback? onPressed;

  ///**[onLongPress]** is a void function well be called when the button is pressed for long.
  final VoidCallback? onLongPress;

  ///**[style]** define the entire button style, like buttonColor, iconSize,
  /// width, and other.
  final AuthButtonStyle? style;

  ///**[text]** Define text in the button.
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/style-default.png)
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/text.png)
  final String? text;

  ///**[darkMode]** Define if the theme of the button is dark or light,
  ///the default value is [false].
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/style-default.png)
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/dark-mode-default.png)
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/style-icon.png)
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/dark-mode-icon.png)

  final bool darkMode;

  ///**[isLoading]** A boolean variable which define if something is loading,
  /// if so will be show a progress indicator.
  final bool isLoading;

  ///**[rtl]** A boolean variable needed to support the **right to left** languages.
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/buttons/google.png)
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/rtl.png)
  final bool rtl;

  Color getButtonColor();

  Color getIconBackground();

  TextStyle getTextStyle();

  String getIconUrl();

  Color? getProgressIndicatorValueColor();

  AuthButtonStyle? getButtonStyle();

  @override
  Widget build(BuildContext context);
}
