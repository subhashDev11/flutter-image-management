import 'package:flutter/material.dart';
import '../../core/app_export.dart';

String _appTheme = "primary";

/// Helper class for managing themes and colors.
class ThemeHelper {
  // A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Changes the app theme to [_newTheme].
  void changeTheme(String _newTheme) {
    _appTheme = _newTheme;
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: colorScheme.onPrimary.withOpacity(1),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          disabledBackgroundColor: colorScheme.onPrimary,
          backgroundColor: colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            color: colorScheme.primary,
            width: 1.h,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 4,
        space: 4,
        color: appTheme.black900.withOpacity(0.4),
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: appTheme.black900,
          fontSize: 16.fSize,
          fontFamily: 'Work Sans',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: appTheme.black900,
          fontSize: 14.fSize,
          fontFamily: 'Avenir Next LT Pro',
          fontWeight: FontWeight.w400,
        ),
        headlineLarge: TextStyle(
          color: colorScheme.onPrimary.withOpacity(1),
          fontSize: 30.fSize,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w700,
        ),
        labelLarge: TextStyle(
          color: colorScheme.onPrimary.withOpacity(1),
          fontSize: 12.fSize,
          fontFamily: 'Avenir Next LT Pro',
          fontWeight: FontWeight.w500,
        ),
        titleLarge: TextStyle(
          color: colorScheme.onPrimary.withOpacity(1),
          fontSize: 20.fSize,
          fontFamily: 'Avenir Next LT Pro',
          fontWeight: FontWeight.w500,
        ),
        titleMedium: TextStyle(
          color: colorScheme.onPrimary.withOpacity(1),
          fontSize: 18.fSize,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w600,
        ),
        titleSmall: TextStyle(
          color: colorScheme.onPrimaryContainer,
          fontSize: 14.fSize,
          fontFamily: 'Avenir Next LT Pro',
          fontWeight: FontWeight.w500,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    // Primary colors
    primary: Color(0XFFE72D38),
    primaryContainer: Color(0XF2FFFFFF),
    secondary: Color(0XF2FFFFFF),
    secondaryContainer: Color(0XFF46469A),
    tertiary: Color(0XF2FFFFFF),
    tertiaryContainer: Color(0XFF46469A),

    // Background colors
    background: Color(0XF2FFFFFF),

    // Surface colors
    surface: Color(0XF2FFFFFF),
    surfaceTint: Color(0XF2FFFFFF),
    surfaceVariant: Color(0XFF46469A),

    // Error colors
    error: Color(0XF2FFFFFF),
    errorContainer: Color(0XFF46469A),
    onError: Color(0XFF302F2F),
    onErrorContainer: Color(0XF2FFFFFF),

    // On colors(text colors)
    onBackground: Color(0XFF302F2F),
    onInverseSurface: Color(0XFF302F2F),
    onPrimary: Color(0XF2FFFFFF),
    onPrimaryContainer: Color(0XFF302F2F),
    onSecondary: Color(0XFF302F2F),
    onSecondaryContainer: Color(0XF2FFFFFF),
    onTertiary: Color(0XFF302F2F),
    onTertiaryContainer: Color(0XF2FFFFFF),

    // Other colors
    outline: Color(0XF2FFFFFF),
    outlineVariant: Color(0XF2FFFFFF),
    scrim: Color(0XF2FFFFFF),
    shadow: Color(0XF2FFFFFF),

    // Inverse colors
    inversePrimary: Color(0XF2FFFFFF),
    inverseSurface: Color(0XF2FFFFFF),

    // Pending colors
    onSurface: Color(0XFF302F2F),
    onSurfaceVariant: Color(0XF2FFFFFF),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Black
  Color get black900 => Color(0XFF000000);

  // Blue
  Color get blue50 => Color(0XFFD7E8FF);
  Color get blueA400 => Color(0XFF147BFF);

  // BlueGray
  Color get blueGray100 => Color(0XFFCCD9E9);
  Color get blueGray10001 => Color(0XFFD8D7D7);
  Color get blueGray400 => Color(0XFF888888);
  Color get blueGray900 => Color(0XFF1F2631);

  // Gray
  Color get gray300 => Color(0XFFDADADA);
  Color get gray50 => Color(0XFFF5F9FF);
  Color get gray5001 => Color(0XFFF5F7FB);

  // Indigo
  Color get indigo90014 => Color(0X14001E8A);
  Color get indigoA200 => Color(0XFF456EFF);

  // Purple
  Color get purple100 => Color(0XFFE9B0E5);

  Color elRed = Color.fromRGBO(231, 45, 56, 1);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();
