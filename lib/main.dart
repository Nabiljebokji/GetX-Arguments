// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_get_arguments/getxFeatures.dart';
import 'package:getx_get_arguments/pageone.dart';
import 'package:getx_get_arguments/pagetwo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: Get.isDarkMode ? Themes.cutomeDarkTheme : Themes.CustomeLiteTheme,
      home: PageOne(),
      getPages: [
        GetPage(name: "/pageone", page: () => PageOne()),
        GetPage(name: "/pagetwo", page: () => PageTwo()),
        GetPage(name: "/feature", page: () => Features()),
      ],
    );
  }
}

class Themes {
//copywith is the same settings but with some little cutome changes
  static ThemeData cutomeDarkTheme = ThemeData.dark().copyWith(
    appBarTheme: AppBarTheme(color: Colors.yellow),
  );

  static ThemeData CustomeLiteTheme = ThemeData.light().copyWith(
    appBarTheme: AppBarTheme(color: Colors.green),
  );
}
