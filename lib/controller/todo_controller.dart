import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../model/todo_model.dart';
import '../services/todo_service.dart';

class TodoController extends GetxController {
  RxList<TodoModel> TodoList = RxList<TodoModel>();

  TextEditingController todoController = TextEditingController();
  RxBool isLoading = false.obs;

  TodoService todoService = TodoService();

  @override
  void onInit() {
    getTodos();
    update();
    super.onInit();
  }

  Future<RxList<TodoModel>> getTodos() async {
    isLoading.value = true;
    try {
      TodoList = await todoService.getTodos();
    } catch (e) {
      print("Error while fetching todos: $e");
    }
    isLoading.value = false;

    return TodoList;
  }

  Future<void> postTodos(title) async {
    isLoading.value = true;
    try {
      await todoService.postTodos(title);
    } catch (e) {
      print("Error while fetching todos: $e");
    }
    isLoading.value = false;
  }

  Future<void> deleteTodo(id) async {
    isLoading.value = true;
    try {
      await todoService.deleteTodo(id);
    } catch (e) {
      print("Error while fetching todos: $e");
    }
    isLoading.value = false;
  }
}
