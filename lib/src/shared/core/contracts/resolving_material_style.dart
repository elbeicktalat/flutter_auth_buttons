import 'package:flutter/material.dart'
    show
        BorderSide,
        Color,
        EdgeInsets,
        FontWeight,
        MaterialState,
        MouseCursor,
        OutlinedBorder,
        Size,
        TextStyle;
import 'package:google_fonts/google_fonts.dart';

///[ResolvingMaterialStyle] a mixin which provides the resolve methods for [AuthButton]s.
///
/// resolve methods allows style resolving based on the [MaterialState]s.
///
/// This is mixed in [AuthButtonStyleButton], its methods are implemented in the concrete [AuthButton]s.
mixin ResolvingMaterialStyle {
  TextStyle? resolveTextStyle(Set<MaterialState> states) {
    return GoogleFonts.getFont(
      'Roboto',
      fontSize: 18,
      fontWeight: FontWeight.bold,
      letterSpacing: 0.50,
    );
  }

  Color? resolveBackgroundColor(Set<MaterialState> states) {
    return null;
  }

  Color? resolveForegroundColor(Set<MaterialState> states) {
    return null;
  }

  Color? resolveOverlayColor(Set<MaterialState> states) {
    return null;
  }

  Color? resolveShadowColor(Set<MaterialState> states) {
    return null;
  }

  Color? resolveSurfaceTintColor(Set<MaterialState> states) {
    return null;
  }

  double? resolveElevation(Set<MaterialState> states) {
    return null;
  }

  EdgeInsets? resolvePadding(Set<MaterialState> states) {
    return null;
  }

  Size? resolveMinimumSize(Set<MaterialState> states) {
    return const Size(double.minPositive, double.minPositive);
  }

  Size? resolveFixedSize(Set<MaterialState> states) {
    return null;
  }

  Size? resolveMaximumSize(Set<MaterialState> states) {
    return null;
  }

  BorderSide? resolveSide(Set<MaterialState> states) {
    return null;
  }

  OutlinedBorder? resolveShape(Set<MaterialState> states) {
    return null;
  }

  MouseCursor? resolveMouseCursor(Set<MaterialState> states) {
    return null;
  }
}
