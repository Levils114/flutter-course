import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Challenger 01',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: Color(0xFFFE6D6E),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://cdn.freebiesupply.com/logos/large/2x/tinder-1-logo-black-and-white.png',
              height: 100,
              width: 200,
            ),
            SizedBox(
              height: 24,
            ),
            Text('Location Changer',
                style: TextStyle(color: Colors.white, fontSize: 20)),
            SizedBox(
              height: 2,
            ),
            Text('Plugin app for Tinder',
                style: TextStyle(color: Colors.white, fontSize: 12)),
            SizedBox(
              height: 24,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 72, right: 72),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Login With Facebook',
                      style: TextStyle(color: Color(0xFFFE6D6E)),
                    ),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18)))),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
