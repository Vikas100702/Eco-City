import 'package:eco_city_admin/core/app_themes/theme.dart';
import 'package:eco_city_admin/logic/view_model/cubits/auth_cubits/sign_in_cubit/sign_in_cubit.dart';
import 'package:eco_city_admin/presentation/screens/auth_screens/sign_in_screen/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loader_overlay/loader_overlay.dart';


class MyApplication extends StatelessWidget {
  const MyApplication({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => SignInCubit()),
        //BlocProvider(create: (_) => HomeCubit()),
      ],
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return ScreenUtilInit(
            designSize: Size(constraints.maxWidth, constraints.maxHeight),
            splitScreenMode: true,
            builder: (context, child) =>
                GlobalLoaderOverlay(
                  overlayColor: Theme
                      .of(context)
                      .colorScheme
                      .surface
                      .withOpacity(0.5),
                  //overlayWidgetBuilder: (progress) => const GlobalLoader(), //use when want a custom loading widget
                  child: MaterialApp(
                    title: 'EcoCity',
                    debugShowCheckedModeBanner: false,
                    theme: CustomTheme.lightTheme(context),
                    darkTheme:CustomTheme.darkTheme(context),
                    themeMode: ThemeMode.system,
                    home: SignInScreen(),
                  ),
                ),
          );
        },
      ),
    );
  }
}




