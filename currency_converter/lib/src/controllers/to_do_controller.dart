import 'package:currency_converter/src/models/to_do_model.dart';
import 'package:currency_converter/src/repositories/to_do_repository.dart';

class ToDoController {
  List<ToDoModel> toDos = [];

  Future<void> start() async {
    toDos = await ToDoRepository().handleGetToDo();
  }
}
