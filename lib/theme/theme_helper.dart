
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jmrassignmentapp/core/utils/pref_utils.dart';
import 'package:jmrassignmentapp/core/utils/size_utils.dart';

LightCodeColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();

class ThemeHelper {
  var _appTheme = PrefUtils().getThemeData();
  Map<String, LightCodeColors> _supportedCustomColor = {
    'lightCode': LightCodeColors()
  };
  Map<String, ColorScheme> _supportedColorScheme = {
    'lightCode': ColorSchemes.lightCodeColorScheme
  };
  LightCodeColors _getThemeColors() {
    return _supportedCustomColor[_appTheme] ??
        LightCodeColors();
  }
  ThemeData _getThemeData() {
    var colorScheme =_supportedColorScheme[_appTheme] ?? ColorSchemes.lightCodeColorScheme;
    return ThemeData(
        visualDensity: VisualDensity.standard,
        colorScheme: colorScheme,
        textTheme: TextThemes.textTheme(colorScheme),
       outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
    backgroundColor: Colors.transparent,
    side: BorderSide(
    color: appTheme.green800,
    width: 1,
    ),
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(8),
    ),
    visualDensity: const VisualDensity(
    vertical: -4,
    horizontal: -4,
    ),
    padding: EdgeInsets.zero,
    ),
    ),elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),          elevation: 0,
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
        padding: EdgeInsets.zero,
      ),      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: appTheme.gray40001,
      ),
    );
  }
  LightCodeColors themeColor() => _getThemeColors();
  ThemeData themeData() => _getThemeData();


}
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
  bodyLarge: TextStyle(
  color: appTheme.blueGray900,
  fontSize: 16.fSize,
  fontFamily: 'ProximaNova-Medium',
  fontWeight: FontWeight.w400,
  ),
  bodySmall: TextStyle(
  color: appTheme.blueGray90002,
  fontSize: 12.fSize,
  fontFamily: 'Metropolis',
  fontWeight: FontWeight.w400,
  ),        labelLarge: TextStyle(
  color: appTheme.blueGray900,
  fontSize: 12.fSize,
  fontFamily: 'Proxima Nova',
  fontWeight: FontWeight.w600,
  ),
  labelSmall: TextStyle(
  color: colorScheme.onError,
  fontSize: 9.fSize,
  fontFamily: 'Metropolis',
  fontWeight: FontWeight.w500,
  ),
    titleLarge: TextStyle(
      color: appTheme.blueGray900,
      fontSize: 20.fSize,
      fontFamily: 'Proxima Nova',
      fontWeight: FontWeight.w700,
    ),
    titleMedium: TextStyle(
      color: colorScheme.primary,
      fontSize: 16.fSize,
      fontFamily: 'Metropolis',
      fontWeight: FontWeight.w700,
    ),
    titleSmall: TextStyle(
      color: appTheme.blueGray900,
      fontSize: 14.fSize,
      fontFamily: 'Proxima Nova',
      fontWeight: FontWeight.w700,
    ),
  );
}
class ColorSchemes {
  static final lightCodeColorScheme = ColorScheme.light(
    primary: Color(0XFF2EA446),
    primaryContainer: Color(0XFF2D2D2D),
    onError: Color(0XFF63AF23),
    onErrorContainer: Color(0XFF0B0B0B),
    onPrimaryContainer: Color(0XFFF7F7F7),
  );
}

class LightCodeColors {
  // Black
  Color get black900 => Color(0XFF000000); // Blue
  Color get blue700 => Color(0XFF1673E1);

  Color get blueA200 => Color(0XFF428EE7); // BlueGray
  Color get blueGray100 => Color(0XFFD4D4D4);

  Color get blueGray10000 => Color(0X00D9D9D9);

  Color get blueGray400 => Color(0XFF888888);

  Color get blueGray800 => Color(0XFF484C54);

  Color get blueGray80001 => Color(0XFF454B50);

  Color get blueGray900 => Color(0XFF273239);

  Color get blueGray90001 => Color(0XFF2E2E2E);

  Color get blueGray90002 => Color(0XFF2F2F2F);

  Color get gray400 => Color(0XFFB5B5B5);

  Color get gray40001 => Color(0XFFC7C7C7);

  Color get gray600 => Color(0XFF79747E);

  Color get gray70001 => Color(0XFF5A5A5A);

  Color get gray800 => Color(0XFF505050);

  Color get gray80001 => Color(0XFF49454F);

  Color get gray80002 => Color(0XFF434343);

  Color get green50 => Color(0XFFECF2E7);

  Color get green100  =>Color(0XFF2EA446);

  Color get green800 => Color(0XFF0CA411);

  Color get lightGreen200 => Color(0XFFC4E59E);

  Color get tealA100 => Color(0XFFABF1E2);

  Color get whiteA700 => Color(0XFFFFFFFF);

  Color get yellow900 => Color(0XFFFA7927);
}
