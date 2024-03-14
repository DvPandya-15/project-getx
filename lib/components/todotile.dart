import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/todo_controller.dart';
import 'package:getx/model/todo_model.dart';

class TodoTile extends StatelessWidget {
  final TodoController todoController = Get.put(TodoController());
  final TodoModel todo;
  final int i;

  TodoTile({Key? key, required this.i, required this.todo});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        trailing: SizedBox(
          width: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // IconButton(
              //   onPressed: () {
              //     Get.defaultDialog(
              //       title: "Edit Todo",
              //       content: TextFormField(
              //         controller: todoController.todoController,
              //         decoration: const InputDecoration(
              //           labelText: "Todo",
              //         ),
              //       ),
              //       actions: [
              //         ElevatedButton(
              //           onPressed: () {
              //             Get.back();
              //           },
              //           child: const Text("Cancel"),
              //         ),
              //         ElevatedButton(
              //           onPressed: () {
              //             Get.back();
              //           },
              //           child: const Text("Save"),
              //         )
              //       ],
              //     );
              //   },
              //   icon: const Icon(
              //     Icons.edit,
              //     color: Colors.green,
              //   ),
              // ),
              Expanded(
                child: IconButton(
                  onPressed: () {
                    Get.defaultDialog(
                      title: "Delete Todo",
                      content: const Text("Are you sure?"),
                      actions: [
                        ElevatedButton(
                          onPressed: () {
                            Get.back();
                          },
                          child: const Text("Cancel"),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            print("i..$i");
                            todoController.deleteTodos(i);
                            Get.back();
                          },
                          child: const Text("Delete"),
                        )
                      ],
                    );
                  },
                  icon: Icon(
                    Icons.delete,
                    color: Colors.green,
                  ),
                ),
              ),
            ],
          ),
        ),
        title: Text(
          todo.title ?? "",
          style: TextStyle(fontSize: 20),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ));
  }
}
