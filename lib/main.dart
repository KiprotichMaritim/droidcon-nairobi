import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get_storage/get_storage.dart';

import 'package:droidcon_nairobi/app/routes/app_pages.dart';

initServices() async {
  Get.log('starting services ...');
  await GetStorage.init();
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initServices();
  runApp(GetMaterialApp(
      title: 'Droidcon Nairobi',
      initialRoute: AppPages.initial,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.cupertino,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          // Color picked from the 'con' part of 'Fluttercon' logo on https://fluttercon.dev
          seedColor: const Color.fromRGBO(1, 53, 255, 1),
        ),
        useMaterial3: true,
        textTheme: GoogleFonts.capriolaTextTheme(),
      )));
}
