import 'package:flutter/material.dart'
    show
        BorderSide,
        BuildContext,
        Color,
        EdgeInsets,
        FontWeight,
        MaterialState,
        MouseCursor,
        OutlinedBorder,
        Size,
        TextStyle;
import 'package:google_fonts/google_fonts.dart';

mixin ResolvingMaterialStyle {
  TextStyle? resolveTextStyle(
    BuildContext context,
    Set<MaterialState> states,
  ) {
    return GoogleFonts.getFont(
      'Roboto',
      fontSize: 18,
      fontWeight: FontWeight.bold,
      letterSpacing: 0.50,
    );
  }

  Color? resolveBackgroundColor(
    BuildContext context,
    Set<MaterialState> states,
  ) {
    return null;
  }

  Color? resolveForegroundColor(
    BuildContext context,
    Set<MaterialState> states,
  ) {
    return null;
  }

  Color? resolveOverlayColor(
    BuildContext context,
    Set<MaterialState> states,
  ) {
    return null;
  }

  Color? resolveShadowColor(
    BuildContext context,
    Set<MaterialState> states,
  ) {
    return null;
  }

  Color? resolveSurfaceTintColor(
    BuildContext context,
    Set<MaterialState> states,
  ) {
    return null;
  }

  double? resolveElevation(
    BuildContext context,
    Set<MaterialState> states,
  ) {
    return null;
  }

  EdgeInsets? resolvePadding(
    BuildContext context,
    Set<MaterialState> states,
  ) {
    return null;
  }

  Size? resolveMinimumSize(
    BuildContext context,
    Set<MaterialState> states,
  ) {
    return const Size(double.minPositive, double.minPositive);
  }

  Size? resolveFixedSize(
    BuildContext context,
    Set<MaterialState> states,
  ) {
    return null;
  }

  Size? resolveMaximumSize(
    BuildContext context,
    Set<MaterialState> states,
  ) {
    return null;
  }

  BorderSide? resolveSide(
    BuildContext context,
    Set<MaterialState> states,
  ) {
    return null;
  }

  OutlinedBorder? resolveShape(
    BuildContext context,
    Set<MaterialState> states,
  ) {
    return null;
  }

  MouseCursor? resolveMouseCursor(
    BuildContext context,
    Set<MaterialState> states,
  ) {
    return null;
  }
}
