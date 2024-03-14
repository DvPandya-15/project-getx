import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/todo_controller.dart';

class AddTodoButton extends StatelessWidget {
  final TextEditingController todoTitle = new TextEditingController();
  final TodoController todoController = Get.put(TodoController());
  AddTodoButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.green),
        ),
        onPressed: () {
          Get.defaultDialog(
            title: "Add Todo",
            content: TextFormField(
              controller: todoTitle,
              decoration: const InputDecoration(
                labelText: "Todo",
              ),
            ),
            actions: [
              ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: const Text("Cancel"),
              ),
              ElevatedButton(
                onPressed: () {
                  todoController.postTodos(todoTitle.text);
                  Get.back();
                },
                child: const Text("Save"),
              )
            ],
          );
        },
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.add, color: Colors.white, size: 20),
            SizedBox(width: 10),
            Text(
              "Add Todo",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
