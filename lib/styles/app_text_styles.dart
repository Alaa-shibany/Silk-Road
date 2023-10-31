import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTextStyles {
  static TextStyle main = TextStyle(
    shadows: const <Shadow>[
      Shadow(
        offset: Offset(1.0, 1.0),
        blurRadius: 3.0,
        color: Colors.white,
      ),
    ],
    color: AppColors.blackColor,
    // fontSize: mediaQuery.height / 40,
    fontWeight: FontWeight.bold,
  );
}
