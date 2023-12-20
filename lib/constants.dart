import 'package:flutter/material.dart';
import 'package:effective_flutter_lab/models/service.dart';
import 'package:effective_flutter_lab/models/rate.dart';

const List<Service> servicesList = [
  Service(
    imagePath: "assets/images/prime.png",
    title: "СберПрайм",
    description: "Платеж 9 июля",
    cost: '199 ₽ в месяц',
  ),
  Service(
    imagePath: "assets/images/percent_fill.png",
    title: "Переводы",
    description: "Автопродление 21 августа",
    cost: '199 ₽ в месяц',
  ),
];

const List<Rate> ratesList = [
  Rate(
    imagePath: "assets/images/speedometer.png",
    title: "Изменить суточный лимит",
    description: "На платежи и переводы",
  ),
  Rate(
    imagePath: "assets/images/percent.png",
    title: "Переводы без комиссии",
    description: "Показать остаток в этом месяце",
  ),
  Rate(
    imagePath: "assets/images/arrow.png",
    title: "Информация о тарифах и лимитах",
  ),
];

const interestsList = [
  "Еда",
  "Саморазвитие",
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
  static const lableMedim = TextStyle(
    fontFamily: 'SF_Pro_Text',
    fontWeight: FontWeight.w500,
    fontSize: 14,
    color: AppColors.black,
    letterSpacing: -0.41,
  );
}

abstract class AppColors {
  static const white = Colors.white;
  static const black = Colors.black;

  static const green = Color(0xFF08A652);
  static const darkGreen = Color(0xFF068441);
  static const lightGray = Color(0xFFFAFAFA);
  static const gray = Color(0x7A1D1D25);
  static const blueGray = Color(0x114F4F6C);
  static const redGray = Color(0x14000000);

  static final black8 = Colors.black.withOpacity(0.08);
  static final black12 = Colors.black.withOpacity(0.12);
  static final black32 = Colors.black.withOpacity(0.32);
  static final black55 = Colors.black.withOpacity(0.55);
}
