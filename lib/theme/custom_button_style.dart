
import 'package:flutter/material.dart';
import 'package:jmrassignmentapp/theme/theme_helper.dart';

class CustomButtonStyles {
  // Outline button style
  static ButtonStyle get outlineBlue => OutlinedButton.styleFrom(
    backgroundColor: appTheme.whiteA700,
    side: BorderSide(
      color: appTheme.blue700,
      width: 1,        ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
  );// text button style
 static ButtonStyle get none => ButtonStyle(
     backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
     elevation: MaterialStateProperty.all<double>(0),
     side: MaterialStateProperty.all<BorderSide>(
       BorderSide(color: Colors.transparent),
     )
 );
}