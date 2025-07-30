import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles{

  static TextStyle headingLargeStyle(BuildContext context) => GoogleFonts.poppins(
    fontSize: 24.sp,
    fontWeight: FontWeight.bold,
    color: Theme.of(context).colorScheme.onSurface,
  );

  static TextStyle headingMediumStyle(BuildContext context) => GoogleFonts.poppins(
    fontSize: 20.sp,
    fontWeight: FontWeight.bold,
    color: Theme.of(context).colorScheme.onSurface,
  );

  static TextStyle headingSmallStyle(BuildContext context) => GoogleFonts.poppins(
    fontSize: 18.sp,
    fontWeight: FontWeight.bold,
    color: Theme.of(context).colorScheme.onSurface,
  );

  static TextStyle subHeadingLargeStyle(BuildContext context) => GoogleFonts.poppins(
    fontSize: 20.sp,
    fontWeight: FontWeight.w600,
    color: Theme.of(context).colorScheme.onSurface,
  );

  static TextStyle subHeadingMediumStyle(BuildContext context) => GoogleFonts.poppins(
    fontSize: 18.sp,
    fontWeight: FontWeight.w600,
    color: Theme.of(context).colorScheme.onSurface,
  );

  static TextStyle subHeadingSmallStyle(BuildContext context) => GoogleFonts.poppins(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: Theme.of(context).colorScheme.onSurface,
  );

  static TextStyle descriptionLargeTextStyle(BuildContext context) => GoogleFonts.poppins(
    fontSize: 18.sp,
    fontWeight: FontWeight.w500,
    color: Theme.of(context).colorScheme.onSurface,
  );

  static TextStyle descriptionMediumTextStyle(BuildContext context) => GoogleFonts.poppins(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    color: Theme.of(context).colorScheme.onSurface,
  );

  static TextStyle descriptionSmallTextStyle(BuildContext context) => GoogleFonts.poppins(
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    color: Theme.of(context).colorScheme.onSurface,
  );


  static TextStyle bodyTextStyle(BuildContext context) => GoogleFonts.poppins(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: Theme.of(context).colorScheme.onSurface,
  );

  static TextStyle smallTextStyle(BuildContext context) => GoogleFonts.poppins(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    color: Theme.of(context).colorScheme.onSurface,
  );
}



/*

| ColorScheme Value | Purpose                               |

| ----------------- | ------------------------------------- |

| `background`      | Screen background color               |

| `onSurface' ✅    | Text color that appears on background/surface |

| `primary`         | Brand/main color                      |

| `onPrimary`       | Text on primary surfaces (buttons)    |



note- onBackground is depricated and use onSurface instead

*/