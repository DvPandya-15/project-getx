import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/components/add_todo_button.dart';
import 'package:getx/components/todotile.dart';
import 'package:getx/controller/todo_controller.dart';

class TodoPage extends StatelessWidget {
  TodoPage({Key? key}) : super(key: key);
  final TodoController todoController = Get.put(TodoController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('T O D O'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Expanded(
              child: Obx(
                () {
                  if (todoController.isLoading.value) {
                    return Center(child: CircularProgressIndicator());
                  } else {
                    return ListView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      itemCount: todoController.TodoList.length,
                      itemBuilder: (context, i) {
                        return Column(
                          children: [
                            SizedBox(height: 10), // Adjust the height as needed
                            GetBuilder<TodoController>(
                              builder: (_) => TodoTile(
                                i: i,
                                todo: todoController.TodoList[i],
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: AddTodoButton(),
    );
  }
}
