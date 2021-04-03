import 'package:currency_converter/src/controllers/home_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  final TextEditingController fromText = TextEditingController();
  final TextEditingController toText = TextEditingController();
  final homeController = HomeController(fromText, toText);
  test('should convert from real to dolar', () {
    fromText.text = '2.0';
    homeController.convert();

    expect(toText.text, '0.36');
  });
}
