import 'package:flutter/material.dart';

abstract class ThemeableAuthButton {
  ThemeData iconSecondaryDarkTheme();
  ThemeData iconSecondaryLightTheme();
  ThemeData iconOutlinedDarkTheme();
  ThemeData iconOutlinedLightTheme();
  ThemeData iconDarkTheme();
  ThemeData iconLightTheme();
  ThemeData secondarySecondaryDarkTheme();
  ThemeData secondarySecondaryLightTheme();
  ThemeData secondaryOutlinedDarkTheme();
  ThemeData secondaryOutlinedLightTheme();
  ThemeData secondaryDarkTheme();
  ThemeData secondaryLightTheme();
  ThemeData defaultSecondaryDarkTheme();
  ThemeData defaultSecondaryLightTheme();
  ThemeData defaultOutlinedLightTheme();
  ThemeData defaultOutlinedDarkTheme();
  ThemeData defaultDarkTheme();
  ThemeData defaultLightTheme();
}
