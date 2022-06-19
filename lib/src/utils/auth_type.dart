// Copyright (c) 2021 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

/// This enum make you able to choose the type of button.
enum AuthButtonType {
  ///[icon] Show only social media icon.
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/main/doc/api/buttons/google-icon.png)
  ///
  icon,

  ///[secondary] Very similar to default auth button, but this has tow colors,
  /// the button color and the icon background color.
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/main/doc/api/buttons/google-secondary.png)
  ///
  secondary,
}

/// This enum make you able to choose the type of an icon.
enum AuthIconType {
  /// The secondary icon look, most of the time it is not close the default one.
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/main/doc/api/assets/icontype/secondary.jpg)
  ///
  secondary,

  /// The outline icon look, most it takes the default one and add a outline borders.
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/main/doc/api/assets/icontype/outlined.jpg)
  ///
  outlined,
}

/// This enum make you able to choose the type of the progress indicator.
enum AuthIndicatorType {
  /// The progress along a circular arc, this is the default value.
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/main/doc/api/assets/progressindicatortype/circular.jpg)
  ///
  /// See also:
  ///
  /// * [CircularProgressIndicator], which shows progress along a circular arc.
  ///
  circular,

  /// The progress along a line.
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/main/doc/api/assets/progressindicatortype/linear.jpg)
  ///
  /// See also:
  ///
  /// * [LinearProgressIndicator], which displays progress along a line.
  ///
  linear,
}
