import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

class AppText {
  static final AppText _instance = AppText._internal();

  factory AppText() => _instance;

  AppText._internal();

  double _res(BuildContext context, double size) {
    double screenWidth = MediaQuery.sizeOf(context).width;
    double scale = (screenWidth / 390.0).clamp(0.8, 1.25);
    return size * scale;
  }

  TextStyle points(BuildContext context) => TextStyle(
    color: AppColors.gold,
    fontSize: _res(context, 42),
    fontWeight: FontWeight.w700,
    letterSpacing: -1.0,
  );

  TextStyle h1(
    BuildContext context, {
    Color color = AppColors.primaryText,
    FontWeight weight = FontWeight.w600,
  }) =>
      TextStyle(color: color, fontSize: _res(context, 24), fontWeight: weight);

  TextStyle h2(BuildContext context, {Color color = AppColors.primaryText}) =>
      TextStyle(
        color: color,
        fontSize: _res(context, 22),
        fontWeight: FontWeight.w600,
      );

  TextStyle h3(BuildContext context, {Color color = AppColors.gold}) =>
      TextStyle(
        color: color,
        fontSize: _res(context, 20),
        fontWeight: FontWeight.w600,
      );

  TextStyle title(
    BuildContext context, {
    Color color = AppColors.primaryText,
  }) => TextStyle(
    color: color,
    fontSize: _res(context, 18),
    fontWeight: FontWeight.w600,
  );

  TextStyle subtitle(
    BuildContext context, {
    Color color = AppColors.primaryText,
  }) => TextStyle(
    color: color,
    fontSize: _res(context, 16),
    fontWeight: FontWeight.w600,
  );

  TextStyle body(
    BuildContext context, {
    Color color = AppColors.primaryText,
    FontWeight weight = FontWeight.w500,
  }) =>
      TextStyle(color: color, fontSize: _res(context, 14), fontWeight: weight);

  TextStyle bodySmall(
    BuildContext context, {
    Color color = AppColors.secondaryText,
    FontWeight weight = FontWeight.w400,
  }) =>
      TextStyle(color: color, fontSize: _res(context, 13), fontWeight: weight);

  TextStyle caption(
    BuildContext context, {
    Color color = AppColors.secondaryText,
    FontWeight weight = FontWeight.w500,
  }) =>
      TextStyle(color: color, fontSize: _res(context, 12), fontWeight: weight);

  TextStyle overline(
    BuildContext context, {
    Color color = AppColors.primaryText,
  }) => TextStyle(
    color: color,
    fontSize: _res(context, 10),
    fontWeight: FontWeight.w500,
  );
}


// AI Generated File after finishing up the project