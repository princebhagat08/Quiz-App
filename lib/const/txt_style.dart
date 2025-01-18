import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'app_color.dart';


final fontFamily = GoogleFonts.outfit().fontFamily;

// Different Text Sizes
const appName = 'Quiz App';
const defaultPadding = 8.00;
const defaultMargin = 8.00;
const defaultRadius = 8.00;
const defaultContentPadding = 14.00;
const defaultGap = 8.00;
const defaultCardRadius = 12.00;
const xsmallTextsize = 10.00;
const smallTextsize = 12.00;
const normalTextsize = 14.00;
const mediumTextsize = 16.00;
const largeTextsize = 18.00;
const xLargeTextsize = 24.00;
const xxLargeTextsize = 75.00;




//blackColor color textstyle
final xsmallText = TextStyle(
  fontSize: xsmallTextsize,
  color: AppColor.blackColor,
  fontFamily: fontFamily,
);
final xsmallLightText = TextStyle(
  fontSize: xsmallTextsize,
  color: AppColor.lightPrimary,
  fontFamily: fontFamily,
);

final smallText = TextStyle(
  fontSize: smallTextsize,
  color: AppColor.blackColor,
  fontFamily: fontFamily,
);
final smallBoldText = TextStyle(
  fontSize: smallTextsize,
  color: AppColor.blackColor,
  fontFamily: fontFamily,
  fontWeight: FontWeight.bold,
);

final smallBoldColorText = TextStyle(
  fontSize: smallTextsize,
  color: AppColor.primaryColor,
  fontFamily: fontFamily,
  fontWeight: FontWeight.bold,
);

final normalText = TextStyle(
  fontSize: normalTextsize,
  color: AppColor.blackColor,
  fontFamily: fontFamily,
);

final mediumText = TextStyle(
  fontSize: mediumTextsize,
  color: AppColor.blackColor,
  fontFamily: fontFamily,
);

final mediumBoldText = TextStyle(
  fontSize: mediumTextsize,
  color: AppColor.blackColor,
  fontFamily: fontFamily,
  fontWeight: FontWeight.w500,
);

final mediumBoldWhiteText = TextStyle(
  fontSize: mediumTextsize,
  color: Colors.white,
  fontFamily: fontFamily,
  fontWeight: FontWeight.w500,
);

final largeText = TextStyle(
  fontSize: largeTextsize,
  color: AppColor.blackColor,
  fontFamily: fontFamily,
);

final largeBoldText = TextStyle(
  fontSize: largeTextsize,
  color: AppColor.blackColor,
  fontFamily: fontFamily,
  fontWeight: FontWeight.bold,
);

final xLargeText = TextStyle(
  fontSize: xLargeTextsize,
  color: AppColor.blackColor,
  fontFamily: fontFamily,
);

final xLargeBoldText = TextStyle(
  fontSize: xLargeTextsize,
  color: AppColor.blackColor,
  fontFamily: fontFamily,
  fontWeight: FontWeight.w600,
);

final xLargeBoldColorText = TextStyle(
  fontSize: xLargeTextsize,
  color: AppColor.primaryColor,
  fontFamily: fontFamily,
  fontWeight: FontWeight.w600,
);
final xxLargeBoldColorText = TextStyle(
  fontSize: xxLargeTextsize,
  color: AppColor.primaryColor,
  fontFamily: fontFamily,
  fontWeight: FontWeight.bold,
);

//whiteColor color textstyle

final smallWhiteText = TextStyle(
  fontSize: smallTextsize,
  color: AppColor.whiteColor,
  fontFamily: fontFamily,
);

final smallWhiteBoldText = TextStyle(
  fontSize: smallTextsize,
  color: AppColor.whiteColor,
  fontWeight: FontWeight.w500,
  fontFamily: fontFamily,
);


final normalWhiteText = TextStyle(
  fontSize: normalTextsize,
  color: AppColor.whiteColor,
  fontFamily: fontFamily,
);

final mediumWhiteText = TextStyle(
  fontSize: mediumTextsize,
  color: AppColor.whiteColor,
  fontFamily: fontFamily,
);

final largeWhiteText = TextStyle(
  fontSize: largeTextsize,
  color: AppColor.whiteColor,
  fontFamily: fontFamily,
);

final xLargeWhiteText = TextStyle(
  fontSize: xLargeTextsize,
  color: AppColor.whiteColor,
  fontFamily: fontFamily,
  fontWeight: FontWeight.w500,
);

//light color textStyle

final smallLightText = TextStyle(
  fontSize: smallTextsize,
  color: AppColor.lightPrimary,
  fontFamily: fontFamily,
);

final normalLightText = TextStyle(
  fontSize: normalTextsize,
  color: AppColor.lightPrimary,
  fontFamily: fontFamily,
);

final mediumLightText = TextStyle(
  fontSize: mediumTextsize,
  color: AppColor.lightPrimary,
  fontFamily: fontFamily,
);

final largeLightText = TextStyle(
  fontSize: largeTextsize,
  color:AppColor.lightPrimary,
  fontFamily: fontFamily,
);

final xLargeLightText = TextStyle(
  fontSize: xLargeTextsize,
  color: AppColor.lightPrimary,
  fontFamily: fontFamily,
);

//App color TextStyle

final xSmallColorText = TextStyle(
  fontSize: xsmallTextsize,
  color: AppColor.primaryColor,
  fontFamily: fontFamily,
);
final xSmallWhiteText = TextStyle(
  fontSize: xsmallTextsize,
  color: AppColor.whiteColor,
  fontFamily: fontFamily,
);

final smallColorText = TextStyle(
  fontSize: smallTextsize,
  color: AppColor.primaryColor,
  fontFamily: fontFamily,
);

final normalColorText = TextStyle(
  fontSize: normalTextsize,
  color: AppColor.primaryColor,
  fontFamily: fontFamily,
);

final mediumColorText = TextStyle(
  fontSize: mediumTextsize,
  color: AppColor.primaryColor,
  fontFamily: fontFamily,
);

final mediumBoldColorText = TextStyle(
  fontSize: mediumTextsize,
  color: AppColor.primaryColor,
  fontFamily: fontFamily,
  fontWeight: FontWeight.w400,
);

final largeColorText = TextStyle(
  fontSize: largeTextsize,
  color: AppColor.primaryColor,
  fontFamily: fontFamily,
);

final largeBoldColorText = TextStyle(
    fontSize: largeTextsize,
    color: AppColor.primaryColor,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w400);

final xLargeColorText = TextStyle(
  fontSize: xLargeTextsize,
  color: AppColor.primaryColor,
  fontFamily: fontFamily,
);

final smallcrossedText = TextStyle(
  fontSize: smallTextsize,
  color: AppColor.lightPrimary,
  fontFamily: fontFamily,
  decoration: TextDecoration.lineThrough,
);

final largeCrossedText = TextStyle(
  fontSize: largeTextsize,
  color: Colors.red,
  fontFamily: fontFamily,
  decoration: TextDecoration.lineThrough,
);
