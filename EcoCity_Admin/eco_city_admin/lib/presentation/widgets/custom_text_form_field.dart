import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:eco_city_admin/core/app_themes/text_styles.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final double? height;
  final double? width;
  final Widget? prefix;
  final Widget? suffix;
  final String hintText;
  final String? labelText;
  final TextInputType? keyBoardType;
  final String? Function(String?)? validator;
  final bool obscureText;
  final TextInputAction? textInputAction;
  final bool readOnly;
  final bool isEnabledBorder;
  final void Function(String)? onChanged;
  final void Function(String)? onFieldSubmitted;
  final void Function()? onTap;
  final TextStyle? textStyle;
  final TextStyle? hintStyle;
  final double? borderRadius;
  final Color? fillColor;
  final Color? borderColor;
  final Color? focusedBorderColor;
  final InputBorder? enabledBorder;
  final int? maxLines;
  final int? maxLength;
  final List<TextInputFormatter>? inputFormatters;
  final TextAlign textAlign;
  final double? horizontalContentPadding;
  final double? verticalContentPadding;
  final FocusNode? focusNode;
  final Function()? functionCallOutsideOfTextfield;
  final Widget? counterWidget;

  const CustomTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    this.height,
    this.width,
    this.prefix,
    this.suffix,
    this.validator,
    this.labelText,
    this.keyBoardType=TextInputType.text,
    this.obscureText = false,
    this.textInputAction = TextInputAction.next,
    this.readOnly = false,
    this.onChanged,
    this.onFieldSubmitted,
    this.onTap,
    this.textStyle,
    this.hintStyle,
    this.borderRadius,
    this.fillColor,
    this.borderColor,
    this.focusedBorderColor,
    this.enabledBorder,
    this.isEnabledBorder = false,
    this.maxLines = 1,
    this.maxLength,
    this.inputFormatters,
    this.textAlign = TextAlign.start,
    this.horizontalContentPadding,
    this.verticalContentPadding,
    this.focusNode,
    this.functionCallOutsideOfTextfield,
    this.counterWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

// Determine the default border side for OutlineInputBorders
    final defaultBorderSide = BorderSide(
      color: borderColor ?? Theme.of(context).colorScheme.surfaceContainerHigh,
    );

    // Determine the focused border side
    final focusedBorderSide = BorderSide(
      color: focusedBorderColor ?? Theme.of(context).colorScheme.primary,//onSurface // Defaults to primary if not provided
    );

    // Determine the error border side
    final errorBorderSide = BorderSide(
      color: Theme.of(context).colorScheme.error, // Always red for errors
    );

    return TextFormField(
      focusNode: focusNode ?? FocusNode(),
      textAlign: textAlign,
      maxLines: maxLines,
      maxLength: maxLength,
      scrollPhysics: const AlwaysScrollableScrollPhysics(),
      /*scrollPadding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom + 180),*/
      readOnly: readOnly,
      inputFormatters: inputFormatters,
      validator: validator,
      controller: controller,
      style: textStyle ?? AppTextStyles.bodyTextStyle(context),
      obscureText: obscureText,
      keyboardType: keyBoardType,
      decoration: InputDecoration(
        counter: counterWidget,
        hintStyle: hintStyle ?? AppTextStyles.bodyTextStyle(context),
        labelStyle: AppTextStyles.bodyTextStyle(context),
        contentPadding: EdgeInsets.symmetric(
          horizontal: horizontalContentPadding ?? 10.w,
          vertical: verticalContentPadding ?? 10.h,
        ),
        fillColor: fillColor ?? Theme.of(context).colorScheme.surfaceContainerHigh,
        filled: true,
        labelText: labelText,
        hintText: hintText,
        prefixIcon: prefix,
        suffixIcon: suffix,

        // Default border (when not enabled or focused, or before first interaction)

        border: OutlineInputBorder(
          borderSide:defaultBorderSide,
          borderRadius: BorderRadius.circular(borderRadius ?? 10.r),
        ),

        // Border when enabled (not focused, not error)

        enabledBorder: OutlineInputBorder(
          borderSide: defaultBorderSide,
          borderRadius: BorderRadius.circular(borderRadius ?? 10.r),
        ),

        // Border when focused (not error)

        focusedBorder: OutlineInputBorder(
          borderSide: focusedBorderSide,
          borderRadius: BorderRadius.circular(borderRadius ?? 10.r),
        ),

        // Border when there's an error (not focused)

        errorBorder: OutlineInputBorder(
          borderSide: errorBorderSide,
          borderRadius: BorderRadius.circular(borderRadius ?? 10.r),
        ),

        // Border when there's an error and the field is focused

        focusedErrorBorder: OutlineInputBorder(
          borderSide: errorBorderSide,
          borderRadius: BorderRadius.circular(borderRadius ?? 10.r),
        ),
        // The labelStyle and helperText/errorText automatically handle color changes
        // based on the error state by default in InputDecoration.

      ),
      textInputAction: textInputAction,
      // onTapOutside: (value) {
      //   hideKeyBoard();
      // },
      onChanged: onChanged,
      onFieldSubmitted: onFieldSubmitted,
      onTap: onTap,
    );
  }
}
