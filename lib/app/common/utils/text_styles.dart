import 'package:flutter/material.dart';
import 'package:relight/app/common/common.dart';

class AppTextStyles {
  // Example text styles
  static TextStyle smallRegular({
    Color color = AppColors.textGrey,
    double letterSpacing = 0.5,
  }) {
    return TextStyle(
      color: color,
      fontSize: 14,
      letterSpacing: letterSpacing,
    );
  }

  static TextStyle mediumRegular({
    Color color = AppColors.textGrey,
    double letterSpacing = 0.5,
  }) {
    return TextStyle(
      color: color,
      fontSize: 16,
      letterSpacing: letterSpacing,
    );
  }

  static TextStyle largeRegular({
    Color color = AppColors.textGrey,
    double letterSpacing = 0.5,
    double fontSize = 18,
  }) {
    return TextStyle(
      color: color,
      fontSize: fontSize,
      letterSpacing: letterSpacing,
    );
  }

  static TextStyle smallSemiBold({
    Color color = AppColors.textGrey,
    double letterSpacing = 0.5,
  }) {
    return TextStyle(
      color: color,
      fontSize: 14,
      letterSpacing: letterSpacing,
      fontWeight: FontWeight.w600, // Semi-Bold
    );
  }

  static TextStyle mediumSemiBold({
    Color color = AppColors.textGrey,
    double letterSpacing = 0.5,
  }) {
    return TextStyle(
      color: color,
      fontSize: 16,
      letterSpacing: letterSpacing,
      fontWeight: FontWeight.w600, // Semi-Bold
    );
  }

  static TextStyle largeSemiBold({
    Color color = AppColors.textGrey,
    double letterSpacing = 0.5,
    double fontSize = 18,
  }) {
    return TextStyle(
      color: color,
      fontSize: fontSize,
      letterSpacing: letterSpacing,
      fontWeight: FontWeight.w600, // Semi-Bold
    );
  }

  static TextStyle smallBold({
    Color color = AppColors.textGrey,
    double letterSpacing = 0.5,
  }) {
    return TextStyle(
      color: color,
      fontSize: 14,
      letterSpacing: letterSpacing,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle mediumBold({
    Color color = AppColors.textGrey,
    double letterSpacing = 0.5,
  }) {
    return TextStyle(
      color: color,
      fontSize: 16,
      letterSpacing: letterSpacing,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle largeBold({
    Color color = AppColors.textGrey,
    double letterSpacing = 0.5,
    double fontSize = 18,
  }) {
    return TextStyle(
      color: color,
      fontSize: fontSize,
      letterSpacing: letterSpacing,
      fontWeight: FontWeight.bold,
    );
  }
}

const textTheme = TextTheme(
  headlineMedium: TextStyle(fontSize: 32, color: AppColors.textGrey),
  headlineSmall: TextStyle(fontSize: 24, color: AppColors.textGrey),
  titleMedium: TextStyle(fontSize: 18, color: AppColors.textGrey),
  titleSmall: TextStyle(fontSize: 16, color: AppColors.textGrey),
  bodyLarge: TextStyle(fontSize: 15, color: AppColors.textGrey),
  bodyMedium: TextStyle(fontSize: 13, color: AppColors.textGrey),
);
