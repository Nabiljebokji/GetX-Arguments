import 'package:get/get.dart';

class PageTwoController extends GetxController {
  String? name;
  String? age;

  String? CurrentPage;
  String? prePage;

  @override
  void onInit() {
    name = Get.arguments['name'];
    age = Get.arguments['age'];
    CurrentPage = Get.routing.current;
    prePage = Get.routing.previous;
    super.onInit();
  }
}
