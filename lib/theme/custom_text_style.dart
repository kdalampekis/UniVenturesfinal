import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeInterBlack900 =>
      theme.textTheme.bodyLarge!.inter.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w200,
      );
  static get bodyLargeLightblueA700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.lightBlueA700,
        fontSize: 17.fSize,
      );
  static get bodyMediumBlack900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 13.fSize,
      );
  static get bodySmall12 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 12.fSize,
      );
  static get bodySmallRobotoBlack900 =>
      theme.textTheme.bodySmall!.roboto.copyWith(
        color: appTheme.black900.withOpacity(0.8),
        fontWeight: FontWeight.w400,
      );
  static get bodySmallRobotoGray70002 =>
      theme.textTheme.bodySmall!.roboto.copyWith(
        color: appTheme.gray70002,
        fontSize: 11.fSize,
        fontWeight: FontWeight.w400,
      );
  // Display text style
  static get displayMediumInter =>
      theme.textTheme.displayMedium!.inter.copyWith(
        fontSize: 40.fSize,
      );
  static get displayMediumPrimary => theme.textTheme.displayMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w900,
      );
  static get displayMediumPrimary40 => theme.textTheme.displayMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 40.fSize,
      );
  static get displayMediumPrimaryBlack =>
      theme.textTheme.displayMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 40.fSize,
        fontWeight: FontWeight.w900,
      );
  static get displayMediumPrimaryBlack40 =>
      theme.textTheme.displayMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 40.fSize,
        fontWeight: FontWeight.w900,
      );
  static get displayMediumPrimary_1 => theme.textTheme.displayMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get displayMediumSemiBold => theme.textTheme.displayMedium!.copyWith(
        fontSize: 40.fSize,
        fontWeight: FontWeight.w600,
      );
  static get displaySmallBlack900 => theme.textTheme.displaySmall!.copyWith(
        color: appTheme.black900,
      );
  static get displaySmallInterBlack900 =>
      theme.textTheme.displaySmall!.inter.copyWith(
        color: appTheme.black900,
      );
  // Headline text style
  static get headlineLargePrimary => theme.textTheme.headlineLarge!.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.6),
        fontWeight: FontWeight.w600,
      );
  static get headlineLargePrimary30 => theme.textTheme.headlineLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 30.fSize,
      );
  static get headlineLargePrimaryRegular =>
      theme.textTheme.headlineLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w400,
      );
  static get headlineLargePrimarySemiBold =>
      theme.textTheme.headlineLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get headlineLargeSemiBold => theme.textTheme.headlineLarge!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get headlineSmallBlack900 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w300,
      );
  static get headlineSmallBlack900Bold =>
      theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallBlack900SemiBold =>
      theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get headlineSmallBlack900_1 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.black900,
      );
  static get headlineSmallBlack900_2 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.black900,
      );
  static get headlineSmallBlueA400 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.blueA400,
        fontWeight: FontWeight.w600,
      );
  static get headlineSmallInterBlack900 =>
      theme.textTheme.headlineSmall!.inter.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w200,
      );
  static get headlineSmallInterBlack900ExtraBold =>
      theme.textTheme.headlineSmall!.inter.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w800,
      );
  static get headlineSmallInterBlack900Light =>
      theme.textTheme.headlineSmall!.inter.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w300,
      );
  static get headlineSmallInterBlack900Light_1 =>
      theme.textTheme.headlineSmall!.inter.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w300,
      );
  static get headlineSmallInterIndigoA400 =>
      theme.textTheme.headlineSmall!.inter.copyWith(
        color: appTheme.indigoA400,
        fontWeight: FontWeight.w800,
      );
  static get headlineSmallOnPrimary => theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallOnPrimarySemiBold =>
      theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get headlineSmallPrimary => theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get headlineSmallPrimaryExtraBold =>
      theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w800,
      );
  static get headlineSmallPrimarySemiBold =>
      theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  // Label text style
  static get labelLargePoppinsBlack900 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get labelLargePoppinsLightblueA700 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.lightBlueA700,
        fontSize: 13.fSize,
      );
  static get labelMedium11 => theme.textTheme.labelMedium!.copyWith(
        fontSize: 11.fSize,
      );
  static get labelMediumRoboto => theme.textTheme.labelMedium!.roboto.copyWith(
        fontSize: 11.fSize,
        fontWeight: FontWeight.w500,
      );
  // Title text style
  static get titleLargeBlack900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.5),
        fontWeight: FontWeight.w600,
      );
  static get titleLargeBlack900Bold => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
        fontSize: 22.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeBlack900Light => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w300,
      );
  static get titleLargeBlack900SemiBold => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeBlack900_1 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
      );
  static get titleLargeBlue700 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blue700,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeGray50001 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray50001,
        fontWeight: FontWeight.w300,
      );
  static get titleLargeInterBlack900 =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeInterBlack900ExtraLight =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w200,
      );
  static get titleLargeInterBlack900_1 =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: appTheme.black900,
      );
  static get titleLargeInterBlack900_2 =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: appTheme.black900,
      );
  static get titleLargeInterOnPrimary =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get titleLargeInterOnPrimaryBold =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get titleLargeOnPrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontWeight: FontWeight.w500,
      );
  static get titleLargePrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeRed800 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.red800,
      );
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBlack900Medium => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumBlack900_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
      );
  static get titleMediumBluegray100 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray100,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumInterBlack900 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumInterBlack900Medium =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumInterOnPrimary =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get titleMediumLightblueA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.lightBlueA700,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w700,
      );
}

extension on TextStyle {
  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
}
