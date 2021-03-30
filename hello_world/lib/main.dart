import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Container(
        child: Center(
      child: Text(
        'eae man',
        textDirection: TextDirection.ltr,
        style: TextStyle(color: Colors.white),
      ),
    )));
  }
}
