import 'package:e_commerce/presentation/resources/app_fonts.dart';
import 'package:flutter/material.dart';

TextStyle _getTetStyle(double fontSize, Color color, FontWeight fontWeight) {
  return TextStyle(
    color: color,
    fontFamily: FontConstants.fontFamily,
    fontWeight: fontWeight,
    fontSize: fontSize,
  );
}

// Regular
TextStyle getRegularStyle({
  required Color color,
  double fontSize = FontSizeManager.s14,
}) {
  return _getTetStyle(fontSize, color, FontWeightManager.regular);
}

// Bold
TextStyle getBoldStyle({
  required Color color,
  double fontSize = FontSizeManager.s14,
}) {
  return _getTetStyle(fontSize, color, FontWeightManager.bold);
}

// SemiBold
TextStyle getSemiBold({
  required Color color,
  double fontSize = FontSizeManager.s14,
}) {
  return _getTetStyle(fontSize, color, FontWeightManager.semiBold);
}

// light
TextStyle getLightStyle({
  required Color color,
  double fontSize = FontSizeManager.s14,
}) {
  return _getTetStyle(fontSize, color, FontWeightManager.light);
}

// Meduim
TextStyle getMeduimStyle({
  required Color color,
  double fontSize = FontSizeManager.s14,
}) {
  return _getTetStyle(fontSize, color, FontWeightManager.medium);
}
