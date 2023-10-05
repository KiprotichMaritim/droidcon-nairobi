import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:droidcon_nairobi/app/routes/app_pages.dart';
import 'package:droidcon_nairobi/app/common/ui.dart';

void main() {
  runApp(GetMaterialApp(
      title: 'Droidcon Nairobi',
      initialRoute: AppPages.initial,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.cupertino,
      theme: ThemeData(
        primaryColor: Colors.white,
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
            elevation: 0, foregroundColor: Colors.white),
        brightness: Brightness.light,
        dividerColor: Ui.parseColor("#7FBEEB", opacity: 0.1),
        focusColor: Ui.parseColor("#7FBEEB"),
        hintColor: Ui.parseColor("#7FBEEB"),
        textButtonTheme: TextButtonThemeData(
          style:
              TextButton.styleFrom(foregroundColor: Ui.parseColor("#182825")),
        ),
        colorScheme: ColorScheme.light(
          primary: Ui.parseColor("#182825"),
          secondary: Ui.parseColor("#182825"),
        ),
        fontFamily: "GlacialIndifference",
        textTheme: TextTheme(
          titleLarge: TextStyle(
            color: Ui.parseColor("#182825"),
          ),
          headlineSmall: TextStyle(
            color: Ui.parseColor("#016FB9"),
          ),
          headlineMedium: TextStyle(
            color: Ui.parseColor("#016FB9"),
          ),
          displaySmall: TextStyle(
            color: Ui.parseColor("#016FB9"),
          ),
          displayMedium: TextStyle(
            color: Ui.parseColor("#016FB9"),
          ),
          displayLarge: TextStyle(
            color: Ui.parseColor("#016FB9"),
          ),
          titleSmall: TextStyle(
            color: Ui.parseColor("#016FB9"),
          ),
          titleMedium: TextStyle(
            color: Ui.parseColor("#182825"),
          ),
          bodyMedium: TextStyle(
            color: Ui.parseColor("#016FB9"),
          ),
          bodyLarge: TextStyle(
            color: Ui.parseColor("#016FB9"),
          ),
          bodySmall: TextStyle(
            color: Ui.parseColor("#016FB9"),
          ),
        ),
      )));
}
