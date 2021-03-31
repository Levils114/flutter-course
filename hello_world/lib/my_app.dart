import 'package:flutter/material.dart';
import 'package:hello_world/app_controller.dart';
import 'package:hello_world/home_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (AnimatedBuilder(
      animation: AppController.instace,
      builder: (context, child) {
        return (MaterialApp(
          theme: ThemeData(
            brightness: AppController.instace.darkTheme
                ? Brightness.dark
                : Brightness.light,
          ),
          home: HomePage(),
          debugShowCheckedModeBanner: false,
        ));
      },
    ));
  }
}
