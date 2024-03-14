import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact".tr),
      ),
      body: Center(
        child: Text(
          "This is the contact page".tr,
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
