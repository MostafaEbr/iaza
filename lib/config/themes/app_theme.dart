import 'package:flutter/material.dart';
import '../../core/utils/colors/app_color.dart';
import '../../core/utils/styles/app_fonts.dart';


class Themes {
  double textScaleFactor = 1.0;

  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColor.backgroundColor,
    useMaterial3: true,
    highlightColor:AppColor.greyColorF2,
    splashColor: AppColor.greyColorF2,
    primaryColor: AppColor.whiteColor, // Main primary color
    fontFamily: AppFonts.appFamilyInter,
    progressIndicatorTheme: const ProgressIndicatorThemeData(
    color: AppColor.whiteColor,

    ),
    appBarTheme: AppBarTheme(
      surfaceTintColor: Colors.transparent,

    ),

    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: AppColor.primaryColor,
    ),
    iconTheme: IconThemeData(
      color: AppColor.greyColor9E,
    ),
    dialogTheme: const DialogTheme(
      backgroundColor: AppColor.backgroundColor,
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColor.whiteColor,
      border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(6)),
          borderSide: BorderSide(color: AppColor.greyColor33.withValues(alpha: 0.20),width: 0.9)
      ),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(6)),
          borderSide: BorderSide(color: AppColor.greyColor33.withValues(alpha: 0.20),width: 0.9)
      ),
      focusedErrorBorder:OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(6)),
          borderSide: BorderSide(color: AppColor.greyColor33.withValues(alpha: 0.20),width: 0.9)
      ),
      errorBorder:OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(6)),
          borderSide: BorderSide(color: AppColor.greyColor33.withValues(alpha: 0.20),width: 0.9)
      ) ,
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(6)),
          borderSide: BorderSide(color: AppColor.greyColor33.withValues(alpha: 0.20),width: 0.9)
      ),
    ),
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: AppColor.primaryColor,
      onPrimary: AppColor.blackColor,
      secondary: AppColor.backgroundColor,
      onSecondary: AppColor.backgroundColor,
      error: AppColor.accentColor,
      onError: AppColor.accentColor,

      inversePrimary: AppColor.primaryColor,
      surface: Colors.transparent,
      onSurface: AppColor.blackColor.withValues(alpha: 0.8),
    ),
    textTheme: TextTheme(

      displayLarge: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w700,
        height: 1,
        fontFamily: AppFonts.appFamilyInter,
        color: AppColor.blackColor,
      ),
      titleLarge: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        height: 1,
        fontFamily: AppFonts.appFamilyInter,
        color: AppColor.blackColor,

      ),
      titleMedium: TextStyle(
        fontSize: 21,
        fontWeight: FontWeight.w400,
        height: 1,
        fontFamily: AppFonts.appFamilyInter,
        color: AppColor.blackColor,
      ),
      titleSmall: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        height: 1,
        fontFamily: AppFonts.appFamilyInter,
        color: AppColor.blackColor,

      ),
      bodyMedium: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        height: 1,
        fontFamily: AppFonts.appFamilyInter,
        color: AppColor.blackColor,

      ),
      headlineLarge: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w400,
        height: 1,
        fontFamily: AppFonts.appFamilyInter,

        color: AppColor.blackColor,

      ),
      headlineMedium: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w400,
        height: 1,
        fontFamily: AppFonts.appFamilyInter,
        color: AppColor.greyColorE20,

      ),
      headlineSmall: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      height: 1,
        fontFamily: AppFonts.appFamilyInter,

      color: AppColor.greyColorE20,

    ),
      bodySmall: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        height: 1.2,
        fontFamily: AppFonts.appFamilyInter,
        color: AppColor.blackColor,

      ),
      displayMedium: TextStyle(
          fontSize: 14,
          color: AppColor.blackColor.withValues(alpha: 0.8),
          fontWeight: FontWeight.w500
      ),
      displaySmall: TextStyle(
        fontSize: 14,
        // fontFamily: AppFonts.CAIRO_REGULAR,
        fontWeight: FontWeight.w400,
        color: AppColor.greyColorE20,
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: AppColor.backgroundColor,
    primaryColor: AppColor.primaryColor,

    useMaterial3: true,
  );
}
