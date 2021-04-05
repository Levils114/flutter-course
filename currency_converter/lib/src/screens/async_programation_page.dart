import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AsyncProgramationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(46, 46, 46, 1),
          shadowColor: Color.fromRGBO(46, 46, 46, 1),
        ),
        body: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('neymar $index'),
            );
          },
        )));
  }
}
