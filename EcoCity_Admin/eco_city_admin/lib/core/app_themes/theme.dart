import 'package:eco_city_admin/core/app_themes/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppColors {

  static const Color green = Color(0xff4dcc45);//Color(0xFF34A853);// elevated buttons dark/light
  static const Color dullLightGreen = Color(0xFF34A853);// Darker green for main accents
  static const Color resolvedGreen = Color(0xFF66BB6A);
  static const Color secondaryGreen = Color(0xFFF0FBF6); // Brighter green, icons/highlights
  static const Color lightCyanAccent = Color(0xFFeefaf6);//D9F6F0);// bg for light theme

  static const Color whitishGrey = Color(0xFFECECF0);// UNSELECTED TAB
  static const Color fillGrey = Color(0xFFF3F3F5);// textFields bg and search bar bg
  static const Color white = Color(0xFFFFFFFF);//card bg light
  static const Color lightBackgroundWhite = Color(0xFFF5F5F5);
  static const Color lightLighterGrey = Color(0xFFBDBDBD);
  static const Color lightGrey = Color(0xFF9E9E9E);

  static const Color lightDarkGrey = Color(0xFF424242);
  static const Color darkDarkerGrey = Color(0xFF2C2C2C);
  static const Color darkDarkestGrey = Color(0xFF212121); // Primary text
  static const Color slightDarkBlack = Color(0xFF121212);
  static const Color black = Color(0xFF000000);

  static const Color lightOrange = Color(0xFFFFEDD4); // For "Pending" status button bg
  static const Color pendingOrange = Color(0xFFFF9800);
  static const Color brightOrangeRed = Color(0xFFFF6900);// dashboard suffix icon bg for notification
  static const Color rejectRed = Color(0xFFF44336); // For "Reject" button
  static const Color brown = Color(0xFF9F2D00);// // For "Pending" status button text

  static const Color inProgressBlue = Color(0xFF42A5F5); // Specific blue for "In Progress" status
  static const Color infoBlue = Color(0xFF2196F3);
  static const Color brightBlue = Color(0xFF2B7FFF);// dashboard suffix icon bg for reports

  static const Color lightBlue = Color(0xFFC8D9F7); //bg for "in progress" status button
  static const Color darkBlue = Color(0xFF193CB8);// text for "in progress" status button

  static const Color lightGreen = Color(0xFFABFCE7);//bg for "resolved" status button
  static const Color brightGreen = Color(0xFF00C951);// dashboard suffix icon bg for resolved reports
  static const Color darkGreen = Color(0xFF016630);// text for "resolved" status button

  static const Color brightPurple = Color(0xFFAD46FF);// dashboard suffix icon bg for GREEN SUGGESTION
  static const Color greenSuggestionsPurple = Color(0xFF9C27B0); // For "Green Suggestions" icon
}

class CustomTheme {

  //light theme
  static ThemeData lightTheme(BuildContext context) {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      primaryColor: AppColors.green,
      canvasColor: AppColors.lightCyanAccent,
      scaffoldBackgroundColor: AppColors.lightCyanAccent,
      cardColor: AppColors.white,

      // Color scheme for general Material widgets
      colorScheme: ColorScheme.light(
        primary: AppColors.green,
        secondary: AppColors.darkGreen,
        surface: AppColors.lightCyanAccent,
        surfaceContainerHighest:AppColors.white,
        // Card and sheet backgrounds
        onPrimary: AppColors.black,
        onSecondary: AppColors.lightGreen,
        onSurface: AppColors.darkDarkerGrey,
        onSurfaceVariant: AppColors.black,
        error: AppColors.rejectRed,
        onError: AppColors.darkDarkestGrey,
      ),

      //App Bar Theme
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.lightBackgroundWhite,
        foregroundColor: AppColors.black, // Text color in AppBar
        elevation: 1.sp, // Slight shadow for AppBar
        titleTextStyle: AppTextStyles.headingLargeStyle(context),
      ),

      //Text style themes
      textTheme: TextTheme(
        //headings style
        headlineLarge: AppTextStyles.headingLargeStyle(context),
        headlineMedium: AppTextStyles.headingMediumStyle(context),
        headlineSmall: AppTextStyles.headingSmallStyle(context),

        // subheadings style
        titleLarge:AppTextStyles.subHeadingLargeStyle(context),
        titleMedium: AppTextStyles.subHeadingMediumStyle(context),
        titleSmall: AppTextStyles.subHeadingSmallStyle(context),

        // bodyTextStyle
        bodyLarge:AppTextStyles.descriptionLargeTextStyle(context),
        bodyMedium: AppTextStyles.descriptionMediumTextStyle(context),
        bodySmall:AppTextStyles.descriptionSmallTextStyle(context),

        displayLarge: AppTextStyles.bodyTextStyle(context),
        displaySmall:AppTextStyles.smallTextStyle(context) ,
      ),

      //elevated button theme
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.green,
          foregroundColor: AppColors.lightBackgroundWhite,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.r),
          ),
          padding:EdgeInsets.symmetric(
            horizontal: 20.w,
            vertical: 12.h,
          ),
          textStyle: AppTextStyles.headingSmallStyle(context),//const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),

      //text button theme
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: AppColors.darkDarkerGrey,
          textStyle: AppTextStyles.headingSmallStyle(context),//const TextStyle(fontSize: 14),
        ),
      ),

      // outlined button theme
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColors.darkDarkerGrey,
          side: const BorderSide(
            color: AppColors.lightDarkGrey,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.r),
          ),
          padding: EdgeInsets.symmetric(
            horizontal: 20.w,
            vertical: 12.h,
          ),
        ),
      ),

      // card theme
      cardTheme: CardThemeData(
        color: AppColors.white,
        elevation: 2.sp,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.r),
        ),
      ),

      // Input Decoration Theme (for text fields)
      inputDecorationTheme: InputDecorationTheme(
        fillColor: AppColors.white,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: const BorderSide(
            color: AppColors.lightLighterGrey,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: const BorderSide(
            color: AppColors.lightLighterGrey,
            width: 2,
          ),
        ),
        hintStyle: AppTextStyles.descriptionSmallTextStyle(context).copyWith(
          color: AppColors.lightDarkGrey,
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 16.w,
          vertical: 12.h,
        ),
      ),

      //icon theme
      iconTheme: IconThemeData(
        color: AppColors.lightDarkGrey, // Default icon color
        size: 24.sp,
      ),
    );
  }

  //dark theme
  static ThemeData darkTheme(BuildContext context) {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      primaryColor: AppColors.green,
      canvasColor: AppColors.black,
      scaffoldBackgroundColor: AppColors.black,
      cardColor: AppColors.darkDarkerGrey,

      // Color scheme for general Material widgets
      colorScheme: ColorScheme.dark(
        primary: AppColors.green,
        secondary: AppColors.lightGreen,
        surface: AppColors.darkDarkerGrey,
        surfaceContainerHighest: AppColors.lightDarkGrey,
        // Card and sheet backgrounds
        onPrimary: AppColors.white,
        onSecondary: AppColors.lightDarkGrey,
        onSurface: AppColors.darkDarkestGrey,
        error: AppColors.rejectRed,
        onError: AppColors.lightGrey,
      ),

      //App Bar Theme
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.black,
        foregroundColor: AppColors.white, // Text color in AppBar
        elevation: 1.sp, // Slight shadow for AppBar
        titleTextStyle: AppTextStyles.headingLargeStyle(context),
      ),

      //Text style themes
      textTheme: TextTheme(
        //headings style
        headlineLarge: AppTextStyles.headingLargeStyle(context),
        headlineMedium: AppTextStyles.headingMediumStyle(context),
        headlineSmall: AppTextStyles.headingSmallStyle(context),

        // subheadings style
        titleLarge:AppTextStyles.subHeadingLargeStyle(context),
        titleMedium: AppTextStyles.subHeadingMediumStyle(context),
        titleSmall: AppTextStyles.subHeadingSmallStyle(context),

        // bodyTextStyle
        bodyLarge:AppTextStyles.descriptionLargeTextStyle(context),
        bodyMedium: AppTextStyles.descriptionMediumTextStyle(context),
        bodySmall:AppTextStyles.descriptionSmallTextStyle(context),

        displayLarge: AppTextStyles.bodyTextStyle(context),
        displaySmall:AppTextStyles.smallTextStyle(context) ,
      ),

      //elevated button theme
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.green,
          foregroundColor: AppColors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.r),
          ),
          padding:EdgeInsets.symmetric(
            horizontal: 20.w,
            vertical: 12.h,
          ),
          textStyle: AppTextStyles.headingSmallStyle(context),//const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),

      //text button theme
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: AppColors.white,
          textStyle: AppTextStyles.headingSmallStyle(context),//const TextStyle(fontSize: 14),
        ),
      ),

      // outlined button theme
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColors.lightDarkGrey,
          side: const BorderSide(
            color: AppColors.lightGrey,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.r),
          ),
          padding: EdgeInsets.symmetric(
            horizontal: 20.w,
            vertical: 12.h,
          ),
        ),
      ),

      // card theme
      cardTheme: CardThemeData(
        color: AppColors.white,
        elevation: 2.sp,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
      ),

      // Input Decoration Theme (for text fields)
      inputDecorationTheme: InputDecorationTheme(
        fillColor: AppColors.darkDarkerGrey,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: const BorderSide(
            color: AppColors.lightGrey,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: const BorderSide(
            color: AppColors.lightGrey,
            width: 2,
          ),
        ),
        hintStyle: AppTextStyles.descriptionSmallTextStyle(context).copyWith(
          color: AppColors.slightDarkBlack,
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 16.w,
          vertical: 12.h,
        ),
      ),

      //icon theme
      iconTheme: IconThemeData(
        color: AppColors.white, // Default icon color
        size: 24.sp,
      ),
    );
  }
}

/*class CustomTheme {

  //light theme
  static ThemeData light(BuildContext context) {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      colorScheme: const ColorScheme.light(
          surface: AppColors.white,
          onSurface: AppColors.black,
          surfaceContainerHigh: AppColors.mediumGrey,
          //grey
          onSurfaceVariant: AppColors.darkGrey,
          secondary: AppColors.lavender,
          onSecondary: AppColors.purple
      ),
      textTheme: TextTheme(

        //headings style
        headlineLarge: AppTextStyles.headingStyle(context),

        // subheadings style
        titleMedium: AppTextStyles.subHeadingStyle(context),

        // bodyTextStyle
        bodyMedium: AppTextStyles.descriptionTextStyle(context),

      ),
    );
  }

  //dark theme
  static ThemeData dark(BuildContext context) {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorScheme: const ColorScheme.dark(
        surface: AppColors.black,
        onSurface: AppColors.white,
        surfaceContainerHigh: AppColors.darkGrey,
        onSurfaceVariant: AppColors.grey,
        secondary: AppColors.lavender,
        onSecondary: AppColors.purple,
      ),
      textTheme: TextTheme(

        //headings style
        headlineLarge: AppTextStyles.headingStyle(context),

        // subheadings style
        titleMedium: AppTextStyles.subHeadingStyle(context),

        // bodyTextStyle
        bodyMedium: AppTextStyles.descriptionTextStyle(context),

      ),
    );
  }
}*/

/*
note- "I have a raw color palette that contains the colors that will be used throughout the application for both dark and light themes.
Now these colors are sorted according to the theme into ColorScheme and mapped to the respective arguments under it.
When TextStyle uses a color, it takes it from ColorScheme, which has already been sorted out based on the current theme."
i.e-
Step 1: Raw Color Palette (AppColors)
Step 2: Map to Roles Using ColorScheme
Step 3: Use Theme-Driven Colors in Styles (AppTextStyles)
*/

/*
| Property       | Used For                                       |
| -------------- | ---------------------------------------------- |
| primary      | Main brand color — buttons, highlights         |
| onPrimary    | Text/icon color on top of primary              |
| secondary    | Accent color — chips, tags, floating icons     |
| onSecondary  | Text/icon color on top of secondary            |
| tertiary     | Additional color — ratings, highlights, badges |
| onTertiary   | Text/icon on top of tertiary color             |
| background   | Scaffold background color                      |
| onBackground | Text shown over background                     |
| surface      | Cards, sheets, popups                          |
| onSurface    | Text/icon over surface                         |
| error        | Error color                                    |
| onError      | Text/icon on error color                       |

*/