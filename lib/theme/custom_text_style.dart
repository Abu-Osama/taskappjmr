

import 'package:flutter/material.dart';
import 'package:jmrassignmentapp/core/app_export.dart';
import 'package:jmrassignmentapp/theme/theme_helper.dart';

extension on TextStyle {
  TextStyle get roboto {
  return copyWith(
    fontFamily: 'Roboto',    );
}  TextStyle get metropolis {
  return copyWith(
    fontFamily: 'Metropolis',
  );
}
}

class CustomTextStyles {
  static get bodyLargeMetropolisBluegray800 =>
      theme.textTheme.bodyLarge!.metropolis.copyWith(
        color: appTheme.blueGray800,
      );
  static get bodySmallWhiteA700 => theme.textTheme.bodySmall!.copyWith(
    color: appTheme.whiteA700,
  );

  static get labelLargeMetropolisBluegray80001 =>
      theme.textTheme.labelLarge!.metropolis.copyWith(
    color: appTheme.blueGray80001,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeMetropolisBluegray90002 =>
      theme.textTheme.labelLarge!.metropolis.copyWith(
        color: appTheme.blueGray90002,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeMetropolisGray80002 =>
      theme.textTheme.labelLarge!.metropolis.copyWith(
        color: appTheme.gray80002,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeMetropolisGray80002_1 =>
      theme.textTheme.labelLarge!.metropolis.copyWith(
        color: appTheme.gray80002,
      );
  static get labelLargeMetropolisPrimary =>
      theme.textTheme.labelLarge!.metropolis.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeMetropolisPrimaryContainer =>
      theme.textTheme.labelLarge!.metropolis.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get labelLargeMetropolisWhiteA700 =>
      theme.textTheme.labelLarge!.metropolis.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeMetropolisWhiteA700_1 =>
      theme.textTheme.labelLarge!.metropolis.copyWith(
        color: appTheme.whiteA700,
      );
  static get labelLargeMetropolisYellow900 =>
      theme.textTheme.labelLarge!.metropolis.copyWith(
        color: appTheme.yellow900,
      );
  static get labelSmallBlueA200 => theme.textTheme.labelSmall!.copyWith(
    color: appTheme.blueA200,
  );
  static get titleLargeMetropolisOnErrorContainer =>
      theme.textTheme.titleLarge!.metropolis.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontSize: 22.fSize,
      );
  static get titleLargeMetropolisWhiteA700 =>
      theme.textTheme.titleLarge!.metropolis.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumBluegray100 => theme.textTheme.titleMedium!.copyWith(
    color: appTheme.blueGray100,
    fontWeight: FontWeight.w500,
  );
  static get titleMediumGray70001 => theme.textTheme.titleMedium!.copyWith(
    color: appTheme.gray70001,
    fontWeight: FontWeight.w500,
  );
  static get titleMediumGray80001 => theme.textTheme.titleMedium!.copyWith(
    color: appTheme.gray80001,
    fontSize: 18.fSize,
    fontWeight: FontWeight.w500,
  );
  static get titleMediumPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumWhiteA700 => theme.textTheme.titleMedium!.copyWith(
    color: appTheme.whiteA700,
    fontSize: 19.fSize,
    fontWeight: FontWeight.w600,
  );
  static get titleSmallMetropolisBluegray80001 =>
      theme.textTheme.titleSmall!.metropolis.copyWith(
        color: appTheme.blueGray80001,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallMetropolisBluegray90001 =>
      theme.textTheme.titleSmall!.metropolis.copyWith(
        color: appTheme.blueGray90001,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallMetropolisBluegray90002 =>
      theme.textTheme.titleSmall!.metropolis.copyWith(
        color: appTheme.blueGray90002,
      );
  static get titleSmallMetropolisGray80002 =>
      theme.textTheme.titleSmall!.metropolis.copyWith(
        color: appTheme.gray80002,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallMetropolisOnErrorContainer =>
      theme.textTheme.titleSmall!.metropolis.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontWeight: FontWeight.w500,
      );  static get titleSmallMetropolisPrimaryContainer =>
      theme.textTheme.titleSmall!.metropolis.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontWeight: FontWeight.w600,
      );  static get titleSmallMetropolisYellow900 =>
      theme.textTheme.titleSmall!.metropolis.copyWith(
        color: appTheme.yellow900,
        fontWeight: FontWeight.w500,
      );  static get titleSmallRobotoWhiteA700 =>
      theme.textTheme.titleSmall!.roboto.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w500,
      );
}
