import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  State<HomePage> createState() {
    return (HomePageState());
  }
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
              'https://images-na.ssl-images-amazon.com/images/I/510WmeXkLXL.png',
              height: 80,
              width: 80,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Expanded(
                    child: DropdownButton(
                      value: 'Real',
                      items: [],
                      onChanged: (value) {},
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
                width: 200,
                child:
                    ElevatedButton(onPressed: () {}, child: Text('Converter')))
          ],
        ),
      ),
    ));
  }
}
