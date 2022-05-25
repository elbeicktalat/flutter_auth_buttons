// Copyright (c) 2021 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:auth_buttons/src/shared/base/contracts/base_auth_button.dart';

///**[AuthButton]** a contract which all auth buttons should inherit.
abstract class AuthButton extends BaseAuthButton {
  const AuthButton({
    super.key,
    super.onPressed,
    super.onLongPress,
    super.style,
    super.text,
    super.themeMode,
    super.isLoading,
    super.rtl,
    super.theme,
  });
}
