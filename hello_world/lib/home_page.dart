import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return (HomePageState());
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;

  void setCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
          child: Text(
        'Contador: $counter',
        style: TextStyle(fontSize: 20.0),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: setCounter,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Colors.grey,
      ),
    ));
  }
}
