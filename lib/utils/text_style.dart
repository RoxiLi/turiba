import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:turiba/utils/app_color.dart';

textStyle({
  color,
  double? fontSize,
  fontWeight,
  TextOverflow? textOverflow,
}) {
  return GoogleFonts.ptMono(
    color: color ?? AppColors.black,
    fontSize: fontSize ?? 14,
    fontWeight: fontWeight ?? FontWeight.w400,
  );
}
