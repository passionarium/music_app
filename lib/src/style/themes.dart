import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:music_app/src/style/colors.dart';

final appTheme = ThemeData(
  textTheme: GoogleFonts.openSansTextTheme(),
  primaryColorDark: AppColors.brandDark900,
  primaryColorLight: AppColors.brandLight400,
  primaryColor: AppColors.brandDefault,
  colorScheme: const ColorScheme.light(secondary: Color(0xFF009688)),
  scaffoldBackgroundColor: const Color(0xFFE0F2F1),
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
    ),
  ),
);
