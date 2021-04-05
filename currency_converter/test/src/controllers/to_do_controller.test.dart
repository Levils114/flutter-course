import 'package:currency_converter/src/controllers/to_do_controller.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final controller = ToDoController();

  test('should fill toDos', () async {
    await controller.start();

    expect(controller.toDos.isNotEmpty, true);
  });
}
