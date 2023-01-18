// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_get_arguments/main.dart';

class Features extends StatelessWidget {
  const Features({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Features'),
      ),
      body: ListView(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    print("${GetPlatform.isAndroid}");
                  },
                  child: Text("is Android ?"),
                ),
                ElevatedButton(
                  onPressed: () {
                    print("${GetPlatform.isIOS}");
                  },
                  child: Text("is IOS ?"),
                ),
                ElevatedButton(
                  onPressed: () {
                    print("${GetPlatform.isMobile}");
                  },
                  child: Text("is Mobile ?"),
                ),
                ElevatedButton(
                  onPressed: () {
                    print("${GetPlatform.isMacOS}");
                  },
                  child: Text("is Mac Book ?"),
                ),
                ElevatedButton(
                  onPressed: () {
                    print("${Get.height}");
                  },
                  child: Text("Get Height"),
                ),
                ElevatedButton(
                  onPressed: () {
                    print("${Get.width}");
                  },
                  child: Text("Get width"),
                ),
                ElevatedButton(
                  onPressed: () {
                    print("${context.isPortrait}");
                  },
                  child: Text("بالطول"),
                ),
                ElevatedButton(
                  onPressed: () {
                    print("${context.isLandscape}");
                  },
                  child: Text("بالعرض"),
                ),
                ElevatedButton(
                  onPressed: () {
                    // if (Get.isDarkMode) {
                    //   Get.changeTheme(ThemeData.light());
                    // } else {
                    //   Get.changeTheme(ThemeData.dark());
                    // }
                    if (Get.isDarkMode) {
                      Get.changeTheme(Themes.CustomeLiteTheme);
                    } else {
                      Get.changeTheme(Themes.cutomeDarkTheme);
                    }
                  },
                  child: Text("Change theme"),
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: Text("Back"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
