import 'package:flutter/material.dart';
import 'package:effective_flutter_lab/app_colors.dart';

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
    scaffoldBackgroundColor: AppColors.lightGray,
  );
}
