import 'package:e_commerce/presentation/resources/app_color.dart';
import 'package:e_commerce/presentation/resources/app_fonts.dart';
import 'package:e_commerce/presentation/resources/app_styles.dart';
import 'package:e_commerce/presentation/resources/app_values.dart';
import 'package:flutter/material.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    // Main Color
    primaryColor: AppColor.primary,
    primaryColorLight: AppColor.lightPrimary,
    primaryColorDark: AppColor.darkPrimary,
    disabledColor: AppColor.grey1,
    splashColor: AppColor.lightPrimary, // ripple effect color
    // Card Theme
    cardTheme: CardTheme(
      color: AppColor.white,
      elevation: AppSize.s4,
      shadowColor: AppColor.grey,
    ),

    // APPBar Theme
    appBarTheme: AppBarTheme(
      color: AppColor.primary,
      elevation: AppSize.s4,
      centerTitle: true,
      shadowColor: AppColor.lightPrimary,
      titleTextStyle: getRegularStyle(
        color: AppColor.white,
        fontSize: FontSizeManager.s16,
      ),
    ),

    // Button Theme
    buttonTheme: ButtonThemeData(
      shape: StadiumBorder(),
      buttonColor: AppColor.primary,
      disabledColor: AppColor.grey1,
      splashColor: AppColor.lightPrimary,
    ),

    // elevated Button Theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: getRegularStyle(
          color: AppColor.white,
          fontSize: FontSizeManager.s17,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s12),
        ),
      ),
    ),

    // Thex Theme
    textTheme: TextTheme(
      headlineMedium: getSemiBold(
        color: AppColor.darkGrey,
        fontSize: AppSize.s16,
      ),
      titleMedium: getMeduimStyle(
        color: AppColor.lightGrey,
        fontSize: FontSizeManager.s14,
      ),
      bodyMedium: getRegularStyle(color: AppColor.grey1),
      displayMedium: getLightStyle(
        color: AppColor.white,
        fontSize: FontSizeManager.s22,
      ),
    ),

    // Input Decoration Theme (TextFormField)
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: EdgeInsets.all(AppPadding.p12),
      hintStyle: getRegularStyle(
        color: AppColor.grey,
        fontSize: FontSizeManager.s14,
      ),
      labelStyle: getMeduimStyle(
        color: AppColor.grey,
        fontSize: FontSizeManager.s14,
      ),
      errorStyle: getRegularStyle(color: AppColor.error),

      // enabled Border
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(AppSize.s8)),
        borderSide: BorderSide(color: AppColor.primary, width: AppSize.s1_5),
      ),

      // Focesed Border
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColor.grey, width: AppSize.s1_5),
        borderRadius: BorderRadius.all(Radius.circular(AppSize.s8)),
      ),

      // Error Border
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColor.error, width: AppSize.s1_5),
        borderRadius: BorderRadius.all(Radius.circular(AppSize.s8)),
      ),

      // Focus Error Border
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColor.primary, width: AppSize.s1_5),
        borderRadius: BorderRadius.all(Radius.circular(AppSize.s8)),
      ),
    ),
  );
}
