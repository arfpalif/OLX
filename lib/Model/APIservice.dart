import 'dart:convert';
import 'todo.dart';
import 'package:http/http.dart' as http;

class ApiService {
  Future<Todo> fetchTodo() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/todos/5'));

    if (response.statusCode == 200) {
      return Todo.fromJson(json.decode(response.body));
    } else {
      throw Exception('Gagal mengambil data dari API');
    }
  }
}
