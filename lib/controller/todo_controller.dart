import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/model/todo_model.dart';
import 'package:http/http.dart' as http;

class TodoController extends GetxController {
  var TodoList = RxList<TodoModel>();

  TextEditingController todoController = TextEditingController();
  RxBool isLoading = false.obs;

  @override
  void onInit() {
    getTodos();
    update();
    super.onInit();
  }

  Future<RxList<TodoModel>> getTodos() async {
    isLoading.value = true;
    var response = await http
        .get(Uri.parse('https://65f0b190da8c6584131c484d.mockapi.io/todolist'));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      for (Map<String, dynamic> i in data) {
        TodoList.add(TodoModel.fromJson(i));
      }
      isLoading.value = false;

      return TodoList;
    } else {
      throw Exception('Failed to load Todos');
    }
  }

  Future<void> postTodos(title) async {
    isLoading.value = true;

    var response = await http.post(
        Uri.parse('https://65f0b190da8c6584131c484d.mockapi.io/todolist'),
        headers: {'content-type': 'application/json'},
        body: json.encode({'title': title}));

    if (response.statusCode == 201) {
      print("Todo Added!");
      TodoList.clear();
      getTodos();
      isLoading.value = false;
    } else {
      print("Failed to add todo!");
    }
  }

  Future<void> deleteTodos(id) async {
    isLoading.value = true;

    var response = await http.delete(
      Uri.parse('https://65f0b190da8c6584131c484d.mockapi.io/todolist/$id'),
    );

    if (response.statusCode == 200) {
      print("Todo Deleted!");
      TodoList.clear();
      getTodos();
      isLoading.value = false;
    } else {
      print("Failed to delete todo! => ${response.body.toString()}");
    }
  }
}
