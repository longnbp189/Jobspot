import 'package:jobspot/design/app_color.dart';
import 'package:flutter/material.dart';

class AppTheme {
  // static DividerThemeData get _customDividerThemeData => const DividerThemeData(
  //       thickness: 1,
  //       space: 1,
  //       color: Color(0xFFEFF1EF),
  //     );

  static ThemeData lightTheme(BuildContext context) {
    return ThemeData(
        useMaterial3: true,
        fontFamily: 'HeyWow',
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
            backgroundColor: AppColor.primary),
        appBarTheme: const AppBarTheme(
            backgroundColor: AppColor.white, surfaceTintColor: AppColor.white),
        // appBarTheme: const AppBarTheme(
        //   centerTitle: true,
        //   iconTheme: IconThemeData(
        //     color: AppColor.primary,
        //   ),
        //   titleTextStyle: context.textTheme.titleLarge
        //       ?.copyWith(color: staffLightColorScheme.primary),
        //   color: staffLightColorScheme.surface,
        // )
        primaryColor: AppColor.primary
        // colorScheme: staffLightColorScheme,
        // inputDecorationTheme: inputDecorationTheme,
        // textTheme: customizeTextTheme,
        // dividerTheme: _customDividerThemeData,
        );
  }
}
