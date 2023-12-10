import 'package:flutter/material.dart';
import 'package:effective_flutter_lab/constants.dart';

ThemeData returnMainTheme() {
  return ThemeData(
    appBarTheme: const AppBarTheme(backgroundColor: AppColors.white),
    scaffoldBackgroundColor: AppColors.lightGray,
    cardTheme: const CardTheme(
      color: AppColors.white,
    ),
    chipTheme: ChipThemeData(
      labelStyle: AppFonts.lableMedim,
      showCheckmark: false,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: const BorderSide(color: Color.fromARGB(0, 163, 111, 111))
      ),
      backgroundColor: AppColors.black8,
      padding: const EdgeInsets.symmetric(vertical: 7.0, horizontal: 4.0),
      selectedColor: AppColors.green,
    ),
    dividerColor: AppColors.black12,
    dividerTheme: DividerThemeData(
      color: AppColors.black12,
      thickness: 1,
      space: 1
    ),
    primaryColor: AppColors.green,
    iconTheme: const IconThemeData(color: AppColors.green),
    listTileTheme: const ListTileThemeData(
      contentPadding: EdgeInsets.all(0),
    ),
    textTheme: TextTheme(
      titleLarge: AppFonts.titleLarge,
      titleMedium: AppFonts.titleMedium,
      titleSmall: AppFonts.titleSmall,
      bodyLarge: AppFonts.bodyLarge,
      bodyMedium: AppFonts.bodyMedium,
      bodySmall: AppFonts.bodySmall,
    ),
    tabBarTheme: TabBarTheme(
      labelColor: AppColors.black,
      labelStyle: AppFonts.bodyLarge,
      unselectedLabelColor: AppColors.black55,
      unselectedLabelStyle: AppFonts.bodyMedium,
      indicator: const UnderlineTabIndicator(
        borderSide: BorderSide(width: 2, color: AppColors.darkGreen)
      ),
    ),
  );
}
