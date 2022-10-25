import 'package:flutter/material.dart';

class AppTypography {
  static const _masterStyle = TextStyle(
    fontFamily: 'Urbanist',
  );

// ----------------
// Headline
// ----------------

// Headline900, bold, 56
  static TextStyle normal({final Color? color}) =>
      _masterStyle.copyWith(
        fontSize: 18,
        fontWeight: FontWeight.normal,
        color: color,
      );
// Headline900Semibold, w900, 48
}
