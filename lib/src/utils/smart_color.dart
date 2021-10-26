import 'package:flutter/material.dart';

extension SmartColor on Color {
  ///smartColor() gives a color based on passed color and darkMode.
  Color? smartColor(bool darkMode) {
    double luminance = this.computeLuminance();
    if (luminance == 0.0 && darkMode == false) return Colors.black;
    if (luminance == 1.0 && darkMode == false) return Colors.black;
  }
}
