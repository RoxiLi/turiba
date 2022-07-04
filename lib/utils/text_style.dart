import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:turiba/utils/app_color.dart';

textStylePTMono({
  color,
  double? fontSize,
  fontWeight,
  TextOverflow? textOverflow,
}) {
  return GoogleFonts.ptMono(
    color: color ?? AppColors.white,
    fontSize: fontSize ?? 14,
    fontWeight: fontWeight ?? FontWeight.w400,
  );
}

textStyleAbel({
  color,
  double? fontSize,
  fontWeight,
  double? letterSpacing,
  TextOverflow? textOverflow,
}) {
  return GoogleFonts.abel(
      color: color ?? AppColors.white,
      fontSize: fontSize ?? 14,
      fontWeight: fontWeight ?? FontWeight.w400,
      letterSpacing: letterSpacing ?? 1);
}

textStyleABeeZee({
  color,
  double? fontSize,
  fontWeight,
  TextOverflow? textOverflow,
}) {
  return GoogleFonts.aBeeZee(
    color: color ?? AppColors.white,
    fontSize: fontSize ?? 14,
    fontWeight: fontWeight ?? FontWeight.w400,
  );
}

textStyleLato({
  color,
  double? fontSize,
  fontWeight,
  double? letterSpacing,
  TextOverflow? textOverflow,
  TextDecoration? textDecoration,
}) {
  return GoogleFonts.lato(
    color: color ?? AppColors.white,
    fontSize: fontSize ?? 14,
    fontWeight: fontWeight ?? FontWeight.w400,
    letterSpacing: letterSpacing ?? 1,
    decoration: textDecoration,
  );
}
