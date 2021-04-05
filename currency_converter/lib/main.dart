import 'package:currency_converter/src/screens/async_programation_page.dart';
import 'package:currency_converter/src/screens/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      initialRoute: 'home_page',
      routes: {
        'home_page': (context) => HomePage(),
        'async_programation_page': (context) => AsyncProgramationPage(),
      },
    ));
  }
}
