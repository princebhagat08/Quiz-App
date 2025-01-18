import 'package:flutter/material.dart';

class AppColor {
  // Base color
  static const Color primaryColor = Color(0xFFA42FC1); // Rich Purple// Light Purple
  static const Color lightPrimary = Color(0xFFDB83E6); // Very Light Purple
  static const Color secondaryColor = Color(0xFF891FA6); // Darker Purple
  static const Color offWhite = Color(0xFFF4F6F8); // Soft Grey Background
  static const Color whiteColor = Color(0xFFFFFFFF); // Pure White
  static const Color blackColor = Color(0xFF263238); // Dark Charcoal
  static const Color lightBlack = Color(0xFF37474F); // Light Black
  static const Color bgColor = Color(0xFFF4F6F8); // Background
  static const Color lightPurple = Color(0xFFD9BDE9); // Soft Purple
  static final Color lightGrey = Colors.grey.shade200; // Light Grey

  static const Color grey = Colors.grey; // Standard Grey
  static const Color darkGrey = Color(0xFF546E7A); // Dark Grey
  static const Color oceanBlue = Color(0xFF6F4FBF); // Muted Purple-Blue
  static const Color creamColor = Color(0xFFEFEAF4); // Soft Cream
  static const Color deepOrange = Color(0xFFFF7043); // Warm Coral (unchanged)

  // MaterialColor for theming
  static const MaterialColor myThemeColor = MaterialColor(
    0xFFA42FC1,
    <int, Color>{
      50: Color(0xFFF3E1F9), // Very Light Purple
      100: Color(0xFFE2C3F0), // Lighter Purple
      200: Color(0xFFD1A4E7), // Light Purple
      300: Color(0xFFBB59D3), // Vibrant Purple
      400: Color(0xFFB146CE), // Slightly Darker Purple
      500: Color(0xFFA42FC1), // Primary Color
      600: Color(0xFF891FA6), // Darker Purple
      700: Color(0xFF71148C), // Deep Purple
      800: Color(0xFF5A0F72), // Very Dark Purple
      900: Color(0xFF420A59), // Almost Black Purple
    },
  );
}
