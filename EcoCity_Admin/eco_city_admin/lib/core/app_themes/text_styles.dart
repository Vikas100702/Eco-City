import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles{

  static TextStyle headingLargeStyle(BuildContext context) => GoogleFonts.tillana(//.merriweather(//lora(//robotoSlab(
    fontSize: 24.sp,
    fontWeight: FontWeight.bold,
    color: Theme.of(context).colorScheme.onSurface,
  );

  static TextStyle headingMediumStyle(BuildContext context) => GoogleFonts.tillana(
    fontSize: 20.sp,
    fontWeight: FontWeight.bold,
    color: Theme.of(context).colorScheme.onSurface,
  );

  static TextStyle headingSmallStyle(BuildContext context) => GoogleFonts.tillana(
    fontSize: 18.sp,
    fontWeight: FontWeight.bold,
    color: Theme.of(context).colorScheme.onSurface,
  );

  static TextStyle subHeadingLargeStyle(BuildContext context) => GoogleFonts.lora(
    fontSize: 20.sp,
    fontWeight: FontWeight.w600,
    color: Theme.of(context).colorScheme.onSurface,
  );

  static TextStyle subHeadingMediumStyle(BuildContext context) => GoogleFonts.lora(
    fontSize: 18.sp,
    fontWeight: FontWeight.w600,
    color: Theme.of(context).colorScheme.onSurface,
  );

  static TextStyle subHeadingSmallStyle(BuildContext context) => GoogleFonts.lora(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: Theme.of(context).colorScheme.onSurface,
  );

  static TextStyle descriptionLargeTextStyle(BuildContext context) => GoogleFonts.robotoSlab(
    fontSize: 18.sp,
    fontWeight: FontWeight.w500,
    color: Theme.of(context).colorScheme.onSurface,
  );

  static TextStyle descriptionMediumTextStyle(BuildContext context) => GoogleFonts.robotoSlab(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    color: Theme.of(context).colorScheme.onSurface,
  );

  static TextStyle descriptionSmallTextStyle(BuildContext context) => GoogleFonts.robotoSlab(
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    color: Theme.of(context).colorScheme.onSurface,
  );


  static TextStyle bodyTextStyle(BuildContext context) => GoogleFonts.merriweather(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: Theme.of(context).colorScheme.onSurface,
  );

  static TextStyle smallTextStyle(BuildContext context) => GoogleFonts.merriweather(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    color: Theme.of(context).colorScheme.onSurface,
  );
}