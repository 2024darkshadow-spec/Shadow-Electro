import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppText {
  static const pageTitle = TextStyle(
    color: AppColors.text,
    fontSize: 22,
    fontWeight: FontWeight.bold,
  );

  static const cardTitle = TextStyle(
    color: AppColors.title,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  static const body = TextStyle(
    color: AppColors.text,
    fontSize: 16,
    height: 1.6,
  );

  static const subtitle = TextStyle(
    color: AppColors.subtitle,
    fontSize: 15,
  );
}