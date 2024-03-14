import 'package:get/get.dart';
import 'package:getx/pages/counter.dart';
import 'package:getx/pages/todo.dart';
import '../main.dart';
import '../pages/about.dart';
import '../pages/contact.dart';

List<GetPage<dynamic>> allPages = [
  GetPage(name: '/', page: () => MyHomePage(title: 'Getx')),
  GetPage(name: '/about', page: () => AboutPage()),
  GetPage(name: '/contact', page: () => ContactPage()),
  GetPage(name: '/counter', page: () => CounterPage()),
  GetPage(name: '/todo', page: () => TodoPage()),
];
