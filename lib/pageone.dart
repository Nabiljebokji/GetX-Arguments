// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageOne extends StatelessWidget {
  PageOne({super.key});
  TextEditingController namecontroller = TextEditingController();
  TextEditingController agecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page One'),
      ),
      body: Center(
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(30),
                child: Column(
                  children: [
                    TextFormField(
                      controller: namecontroller,
                      decoration: InputDecoration(hintText: "enter name"),
                    ),
                    TextFormField(
                      controller: agecontroller,
                      decoration: InputDecoration(hintText: "enter age"),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  //we use arguments to pass things between 2 classes(UI's) by uesing controller(GetXController)
                  Get.toNamed("/pagetwo", arguments: {
                    "name": "${namecontroller.text.trim()}",
                    "age": "${agecontroller.text.trim()}",
                  });
                },
                child: Text("Page Two"),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed("/feature");
                },
                child: Text("Get Features"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
