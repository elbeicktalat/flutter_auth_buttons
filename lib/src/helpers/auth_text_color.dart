// Copyright (c) 2021 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

@immutable
class TextColor {
  final Color color;
  final Color? onSecondaryIcon;
  final Color? onSecondaryButton;

  const TextColor(
    this.color, {
    this.onSecondaryIcon,
    this.onSecondaryButton,
  });
}
