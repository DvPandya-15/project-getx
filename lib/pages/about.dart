import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/about_controller.dart';

class AboutPage extends StatelessWidget {
  final AboutController aboutController = Get.put(AboutController());

  AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About".tr),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 179, 6, 209),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Color.fromARGB(255, 179, 6, 209)),
            ),
            margin: EdgeInsets.all(20),
            child: Row(
              children: [
                Text('Name: '.tr,
                    style: TextStyle(fontSize: 20, color: Colors.white)),
                Expanded(
                  child: GetBuilder<AboutController>(
                      builder: (_) => Text(
                          '${aboutController.nameController.text}',
                          style: TextStyle(fontSize: 20, color: Colors.white))),
                ),
                IconButton(
                  alignment: Alignment.centerRight,
                  onPressed: () {
                    Get.defaultDialog(
                      title: "Edit Name".tr,
                      content: TextFormField(
                        controller: aboutController.nameController,
                        decoration: InputDecoration(
                          labelText: "Name".tr,
                        ),
                      ),
                      actions: [
                        ElevatedButton(
                            onPressed: () {
                              Get.back();
                            },
                            child: Text("Cancel".tr)),
                        ElevatedButton(
                            onPressed: () {
                              aboutController.changeName(
                                  aboutController.nameController.text);
                              Get.back();
                            },
                            child: Text("Save".tr))
                      ],
                    );
                  },
                  icon: Icon(
                    Icons.edit,
                    color: Colors.white,
                    size: 20,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
