import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wallet_app/features/main_page.dart';

import 'controllers/theme_controllers.dart';
import 'utils/theme.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  final ThemeController themeController = Get.put(ThemeController());

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Ebook App',
        theme: AppThemes.darkTheme,
        darkTheme: AppThemes.darkTheme,
        themeMode: themeController.themeMode.value,
        home: const MainPage(),
      ),
    );
  }
}
