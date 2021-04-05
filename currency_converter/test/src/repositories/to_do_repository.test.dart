import 'dart:convert';

import 'package:currency_converter/src/models/to_do_model.dart';
import 'package:currency_converter/src/repositories/to_do_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class DioMock extends Mock implements Dio {}

String jsonData = """
  [{"userId": 1, "id": 1, "title": "delectus aut autem", "completed": false}]
""";

main() {
  final dio = DioMock();
  final repository = ToDoRepository(dio);

  test('get toDos', () async {
    when(dio.get(any))
        .thenAnswer((_) async => Response(data: jsonDecode(jsonData)));

    final response = await repository.handleGetToDo();

    expect(response[0].title, 'delectus aut autem');
  });
}
