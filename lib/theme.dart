import 'package:flutter/material.dart';
import 'package:effective_flutter_lab/constants.dart';

ThemeData returnMainTheme() {
  return ThemeData(
    appBarTheme: const AppBarTheme(backgroundColor: AppColors.white),
    brightness: Brightness.light,
    cardTheme: const CardTheme(
      color: AppColors.white,
    ),
    chipTheme: ChipThemeData(
      backgroundColor: AppColors.black8,
      padding: const EdgeInsets.symmetric(vertical: 7.0, horizontal: 12.0),
    ),
    iconTheme: const IconThemeData(color: AppColors.green),
    textTheme: TextTheme(
      titleLarge: AppFonts.titleLarge,
      titleMedium: AppFonts.titleMedium,
      titleSmall: AppFonts.titleSmall,
      bodyLarge: AppFonts.bodyLarge,
      bodyMedium: AppFonts.bodyMedium,
      bodySmall: AppFonts.bodySmall,
    ),
    scaffoldBackgroundColor: AppColors.lightGray,
  );
}
