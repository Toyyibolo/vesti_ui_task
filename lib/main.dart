import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vesti_flutter_ui_task/app_theme.dart';
import 'package:vesti_flutter_ui_task/presentation/pages/onboarding/onboarding_first.dart';

void main() {
  runApp(ProviderScope(child: const VestiApp()));
}

class VestiApp extends StatelessWidget {
  const VestiApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(390, 844),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return MaterialApp(

              // theme: AppTheme.lightTheme,
              // darkTheme: AppTheme.darkTheme,
              theme: ThemeData(fontFamily: 'Sohne'),
              debugShowCheckedModeBanner: false,
              home: FirstOnboarding());
        });
  }
}
