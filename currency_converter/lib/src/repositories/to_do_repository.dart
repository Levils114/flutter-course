import 'package:currency_converter/src/models/to_do_model.dart';
import 'package:dio/dio.dart';

class ToDoRepository {
  Dio dio;
  final String url = 'https://jsonplaceholder.typicode.com/todos';

  ToDoRepository([Dio client]) : dio = client ?? Dio();

  Future<List<ToDoModel>> handleGetToDo() async {
    var response = await dio.get(url);
    var formatResponseToList = response.data as List;

    return formatResponseToList
        .map((json) => ToDoModel.fromJson(json))
        .toList();
  }
}
