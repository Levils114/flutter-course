import 'package:flutter/cupertino.dart';

class AppController extends ChangeNotifier {
  static AppController instace = AppController();

  bool darkTheme = true;

  handleChangeTheme() {
    darkTheme = !darkTheme;
    notifyListeners();
  }
}
