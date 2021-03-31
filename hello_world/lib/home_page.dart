import 'package:flutter/material.dart';
import 'package:hello_world/components/switch.dart';

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
        actions: [SwitchComponent()],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Text('Contador: $counter'),
            SwitchComponent(),
            SizedBox(
              height: 40.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [Text('eae man'), SwitchComponent()],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: setCounter,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    ));
  }
}
