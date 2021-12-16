// Copyright (c) 2021 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

///[AuthButtonType] This enum make you able to choose the type of button.
enum AuthButtonType {
  ///[icon] Show only social media icon.
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/buttons/google-icon.png)
  icon,

  ///[secondary] Very similar to default auth button, but this has tow colors,
  ///the button color and the icon background color.
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/buttons/google-secondary.png)
  secondary,
}

enum AuthIconType {
  secondary,
  outlined,
}
