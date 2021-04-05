import 'dart:convert';

import 'package:http/http.dart' as http;

Future<void> main() async {
  var response = await request();

  print(response.toJson());
}

Future<ToDo> request() async {
  var url = Uri.parse('https://jsonplaceholder.typicode.com/todos/1');

  var response = await http.get(url);

  var json = jsonDecode(response.body);

  var toDo = ToDo.fromJson(json);

  return toDo;
}

class ToDo {
  final String title;
  final int id;
  final int userId;
  final bool completed;

  ToDo({this.title, this.id, this.userId, this.completed});

  factory ToDo.fromJson(Map json) {
    return ToDo(
        id: json['id'],
        userId: json['userId'],
        title: json['title'],
        completed: json['completed']);
  }

  Map toJson() {
    return {'id': id, 'userId': userId, 'title': title, 'completed': completed};
  }
}
