import 'package:eco_city_admin/core/app_themes/text_styles.dart';
import 'package:eco_city_admin/core/app_themes/theme.dart';
import 'package:eco_city_admin/core/const/regular_expressions/regex.dart';
import 'package:eco_city_admin/logic/view_model/cubits/auth_cubits/forgot_password_cubit/forgot_password_cubit.dart';
import 'package:eco_city_admin/logic/view_model/cubits/auth_cubits/sign_in_cubit/sign_in_cubit.dart';
import 'package:eco_city_admin/presentation/screens/auth_screens/forgot_password_screen/forgot_passsword.dart';
import 'package:eco_city_admin/presentation/widgets/custom_elevated_button.dart';
import 'package:eco_city_admin/presentation/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final CardThemeData cardTheme = Theme.of(context).cardTheme;
    final TextTheme textTheme = Theme.of(context).textTheme;
    final ThemeData theme = Theme.of(context);
    final cubit = context.read<SignInCubit>();

    return BlocConsumer<SignInCubit, SignInState>(
  listener: (context, state) {
    if (state is SignInSuccessState) {
      // Show success message or navigate
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Login Successful!',
            style: textTheme.bodyMedium,
          ),
          backgroundColor: AppColors.green.withOpacity(0.5),
          duration: const Duration(seconds: 3),
        ),
      );

      //Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => HomeScreen()),);
    } else if (state is SignInFailureState) {
      // Show error message
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Login Failed: ${state.error}',
            style: textTheme.bodyMedium,
          ),
          backgroundColor: AppColors.rejectRed.withOpacity(0.5),
          duration: const Duration(seconds: 3),
        ),
      );
    }
  },
  builder: (context, state) {
    final bool isLoading = state is SignInLoadingState;
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            //margin: EdgeInsets.symmetric(horizontal: 100.w,),
            width: 150.w,
            height: 150.h,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/ecoCity_hub1.png",
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Text(
            "EcoCity Hub",
            style: textTheme.headlineLarge?.copyWith(
              color: AppColors.darkGreen,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            "Report Waste. Suggest Idea. Transform City",
            style: textTheme.titleLarge?.copyWith(
              color: AppColors.darkGreen,
            ),
            softWrap: true,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20.h,
          ),
          Card(
            margin: EdgeInsets.symmetric(horizontal: 100.w),
            color: cardTheme.color,
            elevation: cardTheme.elevation,
            shape: cardTheme.shape,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  DefaultTabController(
                    length: 2,
                    child: TabBar(
                      dividerColor: Colors.transparent,
                      labelColor: colorScheme.onPrimary,
                      unselectedLabelColor: colorScheme.onPrimary,
                      labelStyle: textTheme.titleSmall,
                      unselectedLabelStyle: textTheme.titleSmall,
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicator: BoxDecoration(
                        //shape: BoxShape.circle,
                        color:theme.colorScheme.surfaceContainerHighest,//cardTheme.withValues(red:0.5,green: 0.5,blue: 0.5),
                        borderRadius: BorderRadius.circular(30.r),
                        boxShadow: [
                          BoxShadow(
                            color: colorScheme.onSurface.withValues(red: 0.5.sp,green: 0.5.sp,blue: 0.5.sp),
                            spreadRadius: 0.r,
                            blurRadius: 2.r,
                            offset: Offset(0.sp, 2.sp), // changes position of shadow
                          ),
                        ],
                      ),
                      // indicatorPadding: EdgeInsets.symmetric(
                      //     vertical: 5.h, horizontal: 10.w),
                      tabs: [
                        Tab(
                          icon: Icon(Icons.login),
                          text: 'Sign In',
                        ),
                        Tab(
                          icon: Icon(Icons.person_add_outlined),
                          text: 'Sign Up',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  Text(
                    "Welcome Back",
                    style: textTheme.bodyLarge?.copyWith(
                      fontSize: 20.sp,
                      color: colorScheme.onPrimary,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    "Enter your credentials to access the admin dashboard",
                    style: textTheme.displayLarge?.copyWith(color: colorScheme.onSurfaceVariant),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  CustomTextField(
                    focusNode: cubit.focusNodeEmail,
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(
                        RegularExpressions.inputFormatterEmailRegex,
                      ),
                    ],
                    hintText: "Enter an email address",
                    //AppString.enterUsername,
                    labelText: 'Email Address',
                    controller: cubit.emailEditingController,
                    keyBoardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value!.isEmpty) {
                        //(value == null || value.isEmpty)
                        return "Enter an email address"; //AppString.pleaseEnterAValidUsername;
                      }
                      if (!RegularExpressions.emailRegex.hasMatch(value)) {
                        // value not matches the regex
                        return "Enter a valid email address"; //AppString.usernameMustBeGreaterThan3Char;
                      }
                      return null; //input is valid
                    },
                    //onChanged:  context.read<SignUpCubit>().onUsernameChanged,
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  BlocBuilder<SignInCubit, SignInState>(
                    buildWhen: (previous, current) {
                      return current is ToggleVisibilityIconState;
                    },
                    builder: (context, state) {
                      return CustomTextField(
                        focusNode: cubit.focusNodePassword,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp(
                              r'[a-zA-Z0-9!@#$%^&*()_+\-=\[\]{};:<>,.?/|]')),
                        ],
                        hintText: "Enter your password",
                        //AppString.enterUsername,
                        labelText: 'Password',
                        controller: cubit.passwordEditingController,
                        keyBoardType: TextInputType.text,
                        obscureText: cubit.isPasswordVisible ? false : true,
                        suffix: IconButton(
                          onPressed: () {
                            cubit.toggleVisibilityIcon();
                          },
                          icon: Icon(
                            cubit.isPasswordVisible
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                        ),
                        textInputAction: TextInputAction.done,
                        validator: (value) {
                          if (value!.isEmpty) {
                            //(value == null || value.isEmpty)
                            return "Enter a password"; //AppString.pleaseEnterAValidUsername;
                          }
                          if (value.length < 8) {
                            return 'Password must be at least 8 characters long.';
                          }
                          if (value.length > 15) {
                            return 'Password cannot exceed 15 characters.';
                          }
                          if (!RegularExpressions.passwordRegex
                              .hasMatch(value)) {
                            // value not matches the regex
                            return 'Password requires: uppercase, lowercase, digit, special char.';
                            //return 'Password must contain at least one uppercase letter, one lowercase letter, one digit, and one special character.'; //AppString.usernameMustBeGreaterThan3Char;
                          }
                          return null; //input is valid
                        },
                      );
                    },
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  BlocBuilder<SignInCubit, SignInState>(
                    buildWhen: (previous, current) {
                      return current is SignInLoadingState ||
                          previous is SignInLoadingState;
                    },
                    builder: (context, state) {
                      return CustomElevatedButton(
                        width: double.infinity,
                        onPressed: isLoading
                            ? null
                            : () {
                                if (_formKey.currentState!.validate()) {}
                              },
                        backgroundColor:
                            Theme.of(context).colorScheme.onSurface,
                        leadingIconWidget: isLoading
                            ? SizedBox(
                                // Use a SizedBox to control the size of the CircularProgressIndicator
                                height: 20.h,
                                // Adjust size as needed, e.g., 20.sp for ScreenUtil
                                width: 20.w,
                                // Adjust size as needed
                                child: CircularProgressIndicator(
                                  strokeWidth: 2.sp,
                                  // Adjust thickness of the spinner
                                  color: Theme.of(context)
                                      .colorScheme
                                      .primary, // Match button text color for contrast
                                ),
                              )
                            : null,
                        // No icon when not loading
                        text: isLoading ? "Signing in..." : "Sign in",
                        textStyle: textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).colorScheme.surface,
                          fontWeight: FontWeight.bold,
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  TextButton(
                    onPressed: () {
                      //BlocProvider(create: (_) => LoginCubit()),
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) =>
                              BlocProvider<ForgotPasswordCubit>(
                            create: (context) => ForgotPasswordCubit(),
                            child: const ForgotPasswordScreen(),
                          ),
                        ),
                      );
                    },
                    child:
                        // Align(
                        //   alignment: Alignment.centerRight,
                        //   child:
                        Text(
                      "Forgot Password ?",
                      style: textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.end,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  },
);
  }
}
