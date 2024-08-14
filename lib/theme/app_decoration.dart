

import 'package:flutter/cupertino.dart';
import 'package:jmrassignmentapp/theme/theme_helper.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillOnPrimaryContainer =>
      BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
      );

  static BoxDecoration get fillWhiteA =>
      BoxDecoration(
        color: appTheme.whiteA700,
      ); // Outline decorations
  static BoxDecoration get outlineBlack =>
      BoxDecoration(
        color: appTheme.whiteA700, boxShadow: [
        BoxShadow(
          color: appTheme.black900.withOpacity(0.09),
          spreadRadius: 2,
          blurRadius: 2,
          offset: Offset(
            -2, 4,
          ),
        )
      ],
      );

  static BoxDecoration get outlinePrimary =>
      BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 1,
        ),
      );
}
class BorderRadiusStyle {  // Rounded borders
    static BorderRadius get roundedBorder10 => BorderRadius.circular(
      10,      );
    static BorderRadius get roundedBorder16 => BorderRadius.circular(
      16,      );
    static BorderRadius get roundedBorder24 => BorderRadius.circular(        24,      );
    static BorderRadius get roundedBorder6 => BorderRadius.circular(        6,      );
}