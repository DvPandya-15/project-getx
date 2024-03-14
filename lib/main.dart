import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:getx/components/languages.dart';
import 'components/route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      locale: Locale('en'),
      fallbackLocale: Locale('en'),
      translations: Languages(),
      title: 'Getx Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      getPages: allPages,
      home: MyHomePage(title: 'Getx'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title.tr),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(
                      onPressed: () {
                        Get.toNamed("/about");
                      },
                      child: Text('About'.tr)),
                  const SizedBox(width: 20),
                  ElevatedButton(
                      onPressed: () {
                        Get.toNamed("/contact");
                      },
                      child: Text('Contact'.tr)),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(
                      onPressed: () {
                        Get.updateLocale(Locale('hi'));
                      },
                      child: Text('Translate to Hindi'.tr)),
                  const SizedBox(width: 20),
                  Expanded(
                    child: ElevatedButton(
                        onPressed: () {
                          Get.updateLocale(Locale('en'));
                        },
                        child: Text('Translate to English'.tr)),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(
                      onPressed: () {
                        Get.toNamed("/counter");
                      },
                      child: Text('Counter'.tr)),
                  const SizedBox(width: 20),
                  Expanded(
                    child: ElevatedButton(
                        onPressed: () {
                          Get.toNamed("/todo");
                        },
                        child: Text('TODO'.tr)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
