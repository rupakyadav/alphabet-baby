import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const Color backgroundColor = Color(0xFFFFFDF7);
  static const Color primaryColor = Color(0xFFFF6B6B);
  static const Color secondaryColor = Color(0xFF4ECDC4);

  static final List<Color> cardColors = [
    const Color(0xFFFF6B6B),
    const Color(0xFF4ECDC4),
    const Color(0xFFFFE66D),
    const Color(0xFF45B7D1),
    const Color(0xFFDDA0DD),
    const Color(0xFF96CEB4),
    const Color(0xFFFECEA8),
    const Color(0xFFFF847C),
  ];

  static TextStyle get titleStyle => GoogleFonts.baloo2(
        fontSize: 42,
        fontWeight: FontWeight.bold,
        color: primaryColor,
      );

  static TextStyle get letterStyle => GoogleFonts.baloo2(
        fontSize: 120,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      );

  static TextStyle get wordStyle => GoogleFonts.baloo2(
        fontSize: 22,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      );

  static TextStyle get emojiStyle => const TextStyle(
        fontSize: 48,
      );

  static TextStyle get subtitleStyle => GoogleFonts.baloo2(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: Colors.grey.shade600,
      );
}
