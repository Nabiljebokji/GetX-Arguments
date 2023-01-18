// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_get_arguments/controllers/pagetwocontroller.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    PageTwoController controller = Get.put(PageTwoController());
    return Scaffold(
      appBar: AppBar(
        title: Text('Page One'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("current page is: ${controller.CurrentPage}"),
            Text("Name is: ${controller.name}"),
            Text("Age is: ${controller.age}"),
            ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: Text("Back"))
          ],
        ),
      ),
    );
  }
}
