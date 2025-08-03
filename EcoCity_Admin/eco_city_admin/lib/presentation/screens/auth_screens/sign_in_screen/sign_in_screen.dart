import 'package:eco_city_admin/core/app_themes/theme.dart';
import 'package:eco_city_admin/logic/view_model/cubits/auth_cubits/sign_in_cubit/sign_in_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
      Theme.of(context).scaffoldBackgroundColor,
     // Color(0xFFCFF6F0),
      // appBar: AppBar(
      //   bottom: TabBar(
      //       controller:context.read<SignInCubit>().tabController,
      //
      //       tabs: tabs,
      //   ),
      // ),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final CardThemeData cardTheme = Theme.of(context).cardTheme;
    final TextTheme textTheme = Theme.of(context).textTheme;
    final ThemeData theme = Theme.of(context);
    final cubit = context.read<SignInCubit>();

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 350.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            //margin: EdgeInsets.symmetric(horizontal: 100.w,),
            width: 200.w,
            height: 200.h,
            decoration: BoxDecoration(
              image: DecorationImage(
                image:AssetImage(
                  "assets/images/ecoCity_hub1.png",
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
          // SizedBox(
          //   height: 5.h,
          // ),
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
          ),
          SizedBox(height: 20.h,),
          Card(
            color: cardTheme.color,
            elevation: cardTheme.elevation,
            shape: cardTheme.shape,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  DefaultTabController(
                    length: 2,
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.whitishGrey,
                        // Background for the unselected tabs
                        borderRadius: BorderRadius.circular(30.r),
                      ),
                      child: TabBar(
                        dividerColor: Colors.transparent,
                        labelColor: colorScheme.onPrimary,
                        unselectedLabelColor: colorScheme.onPrimary,
                        labelStyle: textTheme.titleSmall,
                        unselectedLabelStyle: textTheme.titleSmall,
                        indicatorSize: TabBarIndicatorSize.tab,
                        indicator: BoxDecoration(
                          //shape: BoxShape.circle,
                          color: theme.cardColor,
                          borderRadius: BorderRadius.circular(30.r),
                          // boxShadow: [
                          //   BoxShadow(
                          //     color: colorScheme.onSurface,
                          //     spreadRadius: 0.r,
                          //     blurRadius: 4.r,
                          //     offset: Offset(0.sp, 2.sp), // changes position of shadow
                          //   ),
                          // ],
                        ),
                        indicatorPadding:
                            EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
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
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
