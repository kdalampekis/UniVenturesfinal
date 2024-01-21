import 'dart:ui';
import 'package:kwstas_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillBlue => ElevatedButton.styleFrom(
        backgroundColor: appTheme.blue700,
      );
  static ButtonStyle get fillBlueA => ElevatedButton.styleFrom(
        backgroundColor: appTheme.blueA200,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.h),
        ),
      );
  static ButtonStyle get fillIndigoATL13 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.indigoA400,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(13.h),
        ),
      );
  static ButtonStyle get fillIndigoATL29 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.indigoA400,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(29.h),
        ),
      );

  // Outline button style
  static ButtonStyle get outlineBlack => OutlinedButton.styleFrom(
        backgroundColor: appTheme.indigo600,
        side: BorderSide(
          color: appTheme.black900,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.h),
        ),
      );
  static ButtonStyle get outlineBlackTL11 => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(11.h),
        ),
        shadowColor: appTheme.black900.withOpacity(0.12),
        elevation: 3,
      );
  static ButtonStyle get outlinePrimary => OutlinedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary.withOpacity(0.21),
        side: BorderSide(
          color: theme.colorScheme.primary,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(31.h),
        ),
      );
  static ButtonStyle get outlinePrimaryTL20 => OutlinedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary.withOpacity(0.21),
        side: BorderSide(
          color: theme.colorScheme.primary,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.h),
        ),
      );
  static ButtonStyle get outlinePrimaryTL201 => OutlinedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        side: BorderSide(
          color: theme.colorScheme.primary,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.h),
        ),
      );
  static ButtonStyle get outlinePrimaryTL311 => OutlinedButton.styleFrom(
        backgroundColor: appTheme.blueGray100.withOpacity(0.53),
        side: BorderSide(
          color: theme.colorScheme.primary,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(31.h),
        ),
      );
  static ButtonStyle get outlinePrimaryTL312 => OutlinedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary.withOpacity(0.6),
        side: BorderSide(
          color: theme.colorScheme.primary.withOpacity(0.6),
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(31.h),
        ),
      );
  static ButtonStyle get outlinePrimaryTL313 => OutlinedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        side: BorderSide(
          color: theme.colorScheme.primary.withOpacity(0.6),
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(31.h),
        ),
      );
  static ButtonStyle get outlinePrimaryTL314 => OutlinedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary.withOpacity(0.6),
        side: BorderSide(
          color: theme.colorScheme.primary,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(31.h),
        ),
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
