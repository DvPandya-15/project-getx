import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AboutController extends GetxController {
  TextEditingController nameController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
    nameController.text = 'John Doe';
  }

  void changeName(String value) {
    nameController.text = value;
    update();
  }
}
