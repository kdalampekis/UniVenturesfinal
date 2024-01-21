import 'package:flutter/material.dart';
import 'package:kwstas_s_application2/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlue => BoxDecoration(
        color: appTheme.blue100,
      );
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray100.withOpacity(0.53),
      );
  static BoxDecoration get fillBluegray100 => BoxDecoration(
        color: appTheme.blueGray100.withOpacity(0.5),
      );
  static BoxDecoration get fillBluegray1001 => BoxDecoration(
        color: appTheme.blueGray100.withOpacity(0.22),
      );
  static BoxDecoration get fillBluegray1002 => BoxDecoration(
        color: appTheme.blueGray100.withOpacity(0.95),
      );
  static BoxDecoration get fillDeepOrangeA => BoxDecoration(
        color: appTheme.deepOrangeA100,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray400,
      );
  static BoxDecoration get fillGrayCc => BoxDecoration(
        color: appTheme.gray100Cc,
      );
  static BoxDecoration get fillOnPrimary => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static BoxDecoration get fillOnPrimary1 => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(0.85),
      );
  static BoxDecoration get fillOnPrimary2 => BoxDecoration(
        color: theme.colorScheme.onPrimary,
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );

  // Gradient decorations
  static BoxDecoration get gradientGrayToGray => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 1),
          end: Alignment(0.5, 0),
          colors: [
            appTheme.gray60019.withOpacity(0.25),
            appTheme.gray60019.withOpacity(0.12),
            appTheme.gray60019,
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.2),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              1,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack900 => BoxDecoration(
        color: appTheme.blueGray100.withOpacity(0.22),
        border: Border(
          left: BorderSide(
            color: appTheme.black900,
            width: 2.h,
          ),
          bottom: BorderSide(
            color: appTheme.black900,
            width: 2.h,
          ),
          right: BorderSide(
            color: appTheme.black900,
            width: 2.h,
          ),
        ),
      );
  static BoxDecoration get outlineBlack9001 => BoxDecoration();
  static BoxDecoration get outlineBlack9002 => BoxDecoration(
        color: appTheme.deepPurple100,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack9003 => BoxDecoration(
        color: theme.colorScheme.primary.withOpacity(0.13),
        border: Border(
          left: BorderSide(
            color: appTheme.black900,
            width: 2.h,
          ),
          bottom: BorderSide(
            color: appTheme.black900,
            width: 2.h,
          ),
          right: BorderSide(
            color: appTheme.black900,
            width: 2.h,
          ),
        ),
      );
  static BoxDecoration get outlineBlack9004 => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineOnPrimary => BoxDecoration(
        color: theme.colorScheme.primary.withOpacity(0.13),
        border: Border.all(
          color: theme.colorScheme.onPrimary.withOpacity(1),
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineOnPrimary1 => BoxDecoration(
        color: appTheme.gray40059,
        border: Border.all(
          color: theme.colorScheme.onPrimary.withOpacity(1),
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlinePrimary => BoxDecoration(
        color: appTheme.blueGray100.withOpacity(0.53),
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlinePrimary1 => BoxDecoration(
        color: theme.colorScheme.primary,
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlinePrimary2 => BoxDecoration(
        color: appTheme.blueGray100.withOpacity(0.39),
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlinePrimary3 => BoxDecoration(
        color: theme.colorScheme.primary,
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlinePrimary4 => BoxDecoration(
        color: theme.colorScheme.primary.withOpacity(0.21),
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 1.h,
        ),
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder50 => BorderRadius.circular(
        50.h,
      );
  static BorderRadius get circleBorder66 => BorderRadius.circular(
        66.h,
      );

  // Custom borders
  static BorderRadius get customBorderBL30 => BorderRadius.vertical(
        bottom: Radius.circular(30.h),
      );
  static BorderRadius get customBorderTL30 => BorderRadius.vertical(
        top: Radius.circular(30.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder10 => BorderRadius.circular(
        10.h,
      );
  static BorderRadius get roundedBorder13 => BorderRadius.circular(
        13.h,
      );
  static BorderRadius get roundedBorder16 => BorderRadius.circular(
        16.h,
      );
  static BorderRadius get roundedBorder2 => BorderRadius.circular(
        2.h,
      );
  static BorderRadius get roundedBorder20 => BorderRadius.circular(
        20.h,
      );
  static BorderRadius get roundedBorder31 => BorderRadius.circular(
        31.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.
    
// For Flutter SDK Version 3.7.2 or greater.
    
double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
    