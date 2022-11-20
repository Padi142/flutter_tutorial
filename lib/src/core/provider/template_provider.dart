import 'package:dio/dio.dart';
import 'package:template_app/src/core/models/todo_model.dart';

class TemplateProvider {
  Future<List<TodoModel>> getData() async {
    Dio client = Dio();
    List<TodoModel> todos = [];

    final response =
        await client.get("https://jsonplaceholder.typicode.com/todos");
    if (response.statusCode == 200) {
      final data = response.data;
      for (Map<String, dynamic> todo in data) {
        TodoModel model = TodoModel.fromJson(todo);
        todos.add(model);
      }
    }
    return todos;
  }
}
