import 'package:currency_converter/src/models/to_do_model.dart';
import 'package:currency_converter/src/repositories/to_do_repository.dart';
import 'package:flutter/cupertino.dart';

class ToDoController {
  List<ToDoModel> toDos = [];

  final state = ValueNotifier<ToDoState>(ToDoState.start);

  Future<void> start() async {
    state.value = ToDoState.loading;
    try {
      toDos = await ToDoRepository().handleGetToDo();
      state.value = ToDoState.success;
    } catch (err) {
      state.value = ToDoState.error;
    }
  }
}

enum ToDoState { start, loading, success, error }
