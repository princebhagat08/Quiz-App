
import 'package:flutter/material.dart';
import 'package:quizapp_testline/const/txt_style.dart';
import 'app_color.dart';

abstract class MyTheme {
  static final theme = ThemeData(
    scaffoldBackgroundColor: AppColor.bgColor,
    colorScheme: ColorScheme.fromSeed(seedColor: AppColor.primaryColor),
    primaryColor: AppColor.myThemeColor,
    useMaterial3: true,
    fontFamily: fontFamily,
    checkboxTheme: const CheckboxThemeData(
      visualDensity: VisualDensity.compact,
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    ),
    outlinedButtonTheme: const OutlinedButtonThemeData(
      style: ButtonStyle(
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          visualDensity: VisualDensity.compact,
          fixedSize: MaterialStatePropertyAll(
            Size(90, 25),
          )),
    ),
    inputDecorationTheme: InputDecorationTheme(
        iconColor: AppColor.primaryColor,
        hintStyle: smallWhiteText,
        prefixIconColor: AppColor.primaryColor,
        contentPadding: const EdgeInsets.all(defaultPadding),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: AppColor.whiteColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: AppColor.whiteColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColor.whiteColor),
          borderRadius: BorderRadius.circular(8),
        ),
        errorStyle: smallWhiteText,
        outlineBorder: const BorderSide(color: AppColor.whiteColor)),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        minimumSize: const Size(50, 30),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
    ),
    appBarTheme: AppBarTheme(
        backgroundColor: AppColor.whiteColor,
        surfaceTintColor: AppColor.lightPrimary,
        centerTitle: true,
        elevation: 1,
        titleTextStyle: mediumColorText,
        iconTheme: const IconThemeData(
          size: 20,
        )),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: AppColor.lightPrimary,
      surfaceTintColor: AppColor.lightPrimary,
    ),
    navigationBarTheme: NavigationBarThemeData(
      labelTextStyle: MaterialStateTextStyle.resolveWith(
            (states) {
          if (states.contains(MaterialState.selected)) {
            return smallColorText;
          }
          return const TextStyle(
            color: Colors.white10,
            fontSize: smallTextsize,
          );
        },
      ),
    ),
  );
}