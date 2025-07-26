import 'package:eco_city_package/text_styles_package.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppColors {
  // --- Common Color Palette (used by both themes where applicable) ---
  static const Color primaryGreen = Color(
    0xFF388E3C,
  ); // Darker green for main accents
  static const Color secondaryGreen = Color(
    0xFF4CAF50,
  ); // Brighter green, icons/highlights

  // Status and accent colors - these are typically consistent across themes
  static const Color infoBlue = Color(
    0xFF2196F3,
  ); // For "Total Reports" icon/info
  static const Color pendingOrange = Color(0xFFFF9800); // For "Pending" status
  static const Color rejectRed = Color(0xFFF44336); // For "Reject" button
  static const Color greenSuggestionsPurple = Color(
    0xFF9C27B0,
  ); // For "Green Suggestions" icon
  static const Color inProgressBlue = Color(
    0xFF42A5F5,
  ); // Specific blue for "In Progress" status
  static const Color resolvedGreen = Color(
    0xFF66BB6A,
  ); // Specific green for "Resolved" status

  // --- Light Theme Specific Colors ---
  static const Color lightBackgroundWhite = Color(
    0xFFF5F5F5,
  ); // General light background
  static const Color lightPureWhite = Color(
    0xFFFFFFFF,
  ); // Card backgrounds, etc.
  static const Color lightTextBlack = Color(0xFF212121); // Primary text
  static const Color lightDarkGrey = Color(
    0xFF424242,
  ); // Secondary text/headers
  static const Color lightGrey = Color(
    0xFF9E9E9E,
  ); // Placeholder text, dividers
  static const Color lightLighterGrey = Color(
    0xFFBDBDBD,
  ); // Even lighter grey for subtle elements

  // --- Dark Theme Specific Colors ---
  static const Color darkBackgroundBlack = Color(
    0xFF121212,
  ); // Deep dark background
  static const Color darkCardGrey = Color(
    0xFF1E1E1E,
  ); // Slightly lighter grey for cards
  static const Color darkAppBarGrey = Color(
    0xFF2C2C2C,
  ); // Darker grey for app bar
  static const Color darkTextWhite = Color(
    0xFFFFFFFF,
  ); // Primary text in dark theme
  static const Color darkTextLightGrey = Color(0xFFE0E0E0); // Secondary text
  static const Color darkHintGrey = Color(
    0xFF9E9E9E,
  ); // Hint text in dark theme
  static const Color darkDividerGrey = Color(
    0xFF424242,
  ); // Dividers and subtle borders
}

class CustomTheme {

  //light theme
  static ThemeData lightTheme(BuildContext context) {
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: AppColors.primaryGreen,
      canvasColor: AppColors.lightBackgroundWhite,
      scaffoldBackgroundColor: AppColors.lightBackgroundWhite,
      cardColor: AppColors.lightPureWhite,

      // Color scheme for general Material widgets
      colorScheme: ColorScheme.light(
        primary: AppColors.primaryGreen,
        secondary: AppColors.secondaryGreen,
        surface: AppColors.lightPureWhite,
        // Card and sheet backgrounds
        onPrimary: AppColors.lightPureWhite,
        onSecondary: AppColors.lightPureWhite,
        onSurface: AppColors.lightTextBlack,
        error: AppColors.rejectRed,
        onError: AppColors.lightPureWhite,
      ),

      //App Bar Theme
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.lightPureWhite,
        foregroundColor: AppColors.lightTextBlack, // Text color in AppBar
        elevation: 1.sp, // Slight shadow for AppBar
        titleTextStyle: AppTextStyles.headingStyle(context),
      ),

      //Text style themes
      textTheme: TextTheme(
        //headings style
        headlineLarge: AppTextStyles.headingStyle(context),

        // subheadings style
        titleMedium: AppTextStyles.subHeadingStyle(context),

        // bodyTextStyle
        bodyMedium: AppTextStyles.descriptionTextStyle(context),
      ),

      //elevated button theme
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryGreen,
          foregroundColor: AppColors.lightPureWhite,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.r),
          ),
          padding:EdgeInsets.symmetric(
              horizontal: 20.w,
              vertical: 12.h,
          ),
          textStyle: AppTextStyles.descriptionTextStyle(context),//const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),

      //text button theme
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: AppColors.primaryGreen,
          textStyle: AppTextStyles.bodyTextStyle(context),//const TextStyle(fontSize: 14),
        ),
      ),

      // outlined button theme
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColors.primaryGreen,
          side: const BorderSide(color: AppColors.primaryGreen),
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
        color: AppColors.lightPureWhite,
        elevation: 2.sp,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.r),
        ),
      ),

      // Input Decoration Theme (for text fields)
      inputDecorationTheme: InputDecorationTheme(
        fillColor: AppColors.lightPureWhite,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: const BorderSide(color: AppColors.lightLighterGrey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: const BorderSide(color: AppColors.primaryGreen, width: 2),
        ),
        hintStyle: TextStyle(color: AppColors.lightGrey),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 16.w,
          vertical: 12.h,
        ),
      ),

      //ico theme
      iconTheme: IconThemeData(
        color: AppColors.lightDarkGrey, // Default icon color
        size: 24.sp,
      ),
    );
  }

  //dark theme
  static ThemeData darkTheme(BuildContext context) {
    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: AppColors.primaryGreen,
      canvasColor: AppColors.darkBackgroundBlack,
      scaffoldBackgroundColor: AppColors.darkBackgroundBlack,
      cardColor: AppColors.darkCardGrey,

      // Color scheme for general Material widgets
      colorScheme: ColorScheme.dark(
        primary: AppColors.primaryGreen,
        secondary: AppColors.secondaryGreen,
        surface: AppColors.darkCardGrey,
        // Card and sheet backgrounds
        onPrimary: AppColors.darkTextWhite,
        onSecondary: AppColors.darkTextWhite,
        onSurface: AppColors.darkTextWhite,
        error: AppColors.rejectRed,
        onError: AppColors.darkTextWhite,
      ),

      //App Bar Theme
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.darkAppBarGrey,
        foregroundColor: AppColors.darkTextWhite, // Text color in AppBar
        elevation: 1.sp, // Slight shadow for AppBar
        titleTextStyle: AppTextStyles.headingStyle(context),
      ),

      //Text style themes
      textTheme: TextTheme(
        //headings style
        headlineLarge: AppTextStyles.headingStyle(context),

        // subheadings style
        titleMedium: AppTextStyles.subHeadingStyle(context),

        // bodyTextStyle
        bodyMedium: AppTextStyles.descriptionTextStyle(context),
      ),

      //elevated button theme
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryGreen,
          foregroundColor: AppColors.darkTextWhite,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.r),
          ),
          padding:EdgeInsets.symmetric(
            horizontal: 20.w,
            vertical: 12.h,
          ),
          textStyle: AppTextStyles.descriptionTextStyle(context),//const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),

      //text button theme
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: AppColors.primaryGreen,
          textStyle: AppTextStyles.bodyTextStyle(context),//const TextStyle(fontSize: 14),
        ),
      ),

      // outlined button theme
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColors.primaryGreen,
          side: const BorderSide(color: AppColors.primaryGreen),
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
        color: AppColors.darkCardGrey,
        elevation: 2.sp,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
      ),

      // Input Decoration Theme (for text fields)
      inputDecorationTheme: InputDecorationTheme(
        fillColor: AppColors.darkAppBarGrey,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: const BorderSide(
              color: AppColors.darkDividerGrey,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(
              color: AppColors.primaryGreen,
              width: 2.sp,
          ),
        ),
        hintStyle: TextStyle(color: AppColors.darkHintGrey),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 16.w,
          vertical: 12.h,
        ),
      ),

      //ico theme
      iconTheme: IconThemeData(
        color: AppColors.darkTextLightGrey, // Default icon color
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
| `primary`      | Main brand color — buttons, highlights         |
| `onPrimary`    | Text/icon color on top of primary              |
| `secondary`    | Accent color — chips, tags, floating icons     |
| `onSecondary`  | Text/icon color on top of secondary            |
| `tertiary`     | Additional color — ratings, highlights, badges |
| `onTertiary`   | Text/icon on top of tertiary color             |
| `background`   | Scaffold background color                      |
| `onBackground` | Text shown over background                     |
| `surface`      | Cards, sheets, popups                          |
| `onSurface`    | Text/icon over surface                         |
| `error`        | Error color                                    |
| `onError`      | Text/icon on error color                       |

*/
