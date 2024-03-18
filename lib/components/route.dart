import 'package:get/get.dart';

import '../main.dart';
import '../pages/about.dart';
import '../pages/contact.dart';
import '../pages/counter.dart';
import '../pages/todo.dart';

List<GetPage<dynamic>> allPages = [
  GetPage(name: '/', page: () => MyHomePage(title: 'Getx')),
  GetPage(name: '/about', page: () => AboutPage()),
  GetPage(name: '/contact', page: () => ContactPage()),
  GetPage(name: '/counter', page: () => CounterPage()),
  GetPage(name: '/todo', page: () => TodoPage()),
];
