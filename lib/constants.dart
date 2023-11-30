import 'package:flutter/material.dart';

const interestsList = [
  "Еда",
  "Самообразование",
  "Технологии",
  "Дом",
  "Досуг",
  "Забота о себе",
  "Наука",
];

abstract class AppFonts {
  static const titleLarge = TextStyle(
      fontFamily: 'SF_Pro_Display',
      fontWeight: FontWeight.w700,
      fontSize: 24,
      color: AppColors.black);
  static const titleMedium = TextStyle(
      fontFamily: 'SF_Pro_Text',
      fontWeight: FontWeight.w700,
      fontSize: 20,
      color: AppColors.black);
  static const titleSmall = TextStyle(
      fontFamily: 'SF_Pro_Text',
      fontWeight: FontWeight.w500,
      fontSize: 14,
      color: AppColors.black);
  static const bodyLarge = TextStyle(
      fontFamily: 'SF_Pro_Text',
      fontWeight: FontWeight.w500,
      fontSize: 16,
      color: AppColors.black,
      letterSpacing: -0.4);
  static final bodyMedium = TextStyle(
      fontFamily: 'SF_Pro_Text',
      fontWeight: FontWeight.w500,
      fontSize: 16,
      color: AppColors.black55,
      letterSpacing: -0.4);
  static final bodySmall = TextStyle(
      fontFamily: 'SF_Pro_Text',
      fontWeight: FontWeight.w500,
      fontSize: 14,
      color: AppColors.black55);
}

abstract class AppColors {
  static const white = Colors.white;
  static const black = Colors.black;

  static const green = Color(0xFF08A652);
  static const darkGreen = Color(0xFF068441);
  static const lightGray = Color(0xFFFAFAFA);
  static const gray = Color(0x7A1D1D25);

  static final black8 = Colors.black.withOpacity(0.08);
  static final black12 = Colors.black.withOpacity(0.12);
  static final black32 = Colors.black.withOpacity(0.32);
  static final black55 = Colors.black.withOpacity(0.55);
}
