class TodoModel {
  String? title;
  String? id;

  TodoModel({
    this.title,
    this.id,
  });

  factory TodoModel.fromJson(Map<String, dynamic> json) => TodoModel(
        title: json["title"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "id": id,
      };
}
