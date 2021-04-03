import 'dart:convert';

import 'package:http/http.dart' as http;

void main() {
  request();
}

Future<void> request() async {
  var url = Uri.parse('https://jsonplaceholder.typicode.com/todos/1');

  var response = await http.get(url);

  var json = jsonDecode(response.body);

  print(json['title']);
}
