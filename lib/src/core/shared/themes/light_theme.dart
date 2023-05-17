import 'package:flutter/material.dart';

const lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xFF326B00),
  onPrimary: Color(0xFFFFFFFF),
  primaryContainer: Color(0xFF8FFD3F),
  onPrimaryContainer: Color(0xFF0B2000),
  secondary: Color(0xFF56624B),
  onSecondary: Color(0xFFFFFFFF),
  secondaryContainer: Color(0xFFDAE7CA),
  onSecondaryContainer: Color(0xFF141E0C),
  tertiary: Color(0xFF386665),
  onTertiary: Color(0xFFFFFFFF),
  tertiaryContainer: Color(0xFFBBECEA),
  onTertiaryContainer: Color(0xFF002020),
  error: Color(0xFFBA1A1A),
  errorContainer: Color(0xFFFFDAD6),
  onError: Color(0xFFFFFFFF),
  onErrorContainer: Color(0xFF410002),
  background: Color(0xFFFDFDF5),
  onBackground: Color(0xFF1A1C18),
  surface: Color(0xFFFDFDF5),
  onSurface: Color(0xFF1A1C18),
  surfaceVariant: Color(0xFFE0E4D6),
  onSurfaceVariant: Color(0xFF44483E),
  outline: Color(0xFF74796D),
  onInverseSurface: Color(0xFFF1F1EA),
  inverseSurface: Color(0xFF2F312C),
  inversePrimary: Color(0xFF74DF1D),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFF326B00),
  outlineVariant: Color(0xFFC4C8BB),
  scrim: Color(0xFF000000),
);

final lightTheme = ThemeData(
  scaffoldBackgroundColor: lightColorScheme.background,
  useMaterial3: true,
  colorScheme: lightColorScheme,
  appBarTheme: AppBarTheme(
    centerTitle: true,
    color: lightColorScheme.primaryContainer,
    titleTextStyle: const TextStyle(
      fontSize: 15,
    ),
  ),
);
