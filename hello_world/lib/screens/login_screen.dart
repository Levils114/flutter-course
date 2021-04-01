import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/home_page.dart';

class LoginScreen extends StatefulWidget {
  State createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        body: Stack(
      children: [
        Container(
          child: Image.network(
            'https://cdn.wallpapersafari.com/9/74/5dlAxi.jpg',
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          color: Color.fromRGBO(0, 0, 0, 0.3),
        ),
        body(context),
      ],
    )));
  }

  Widget body(BuildContext context) {
    return (SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo.png',
                height: 60.0,
                width: 60.0,
              ),
              SizedBox(
                height: 24.0,
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      TextField(
                        onChanged: (value) {
                          setState(() {
                            email = value;
                          });
                        },
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Email',
                            focusColor: Colors.black),
                      ),
                      SizedBox(
                        height: 24.0,
                      ),
                      TextField(
                        onChanged: (value) {
                          setState(() {
                            password = value;
                          });
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Password'),
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: ElevatedButton(
                            onPressed: () {
                              if (email == 'levils114@gmail.com' &&
                                  password == '12345teste') {
                                print({email, password});
                                Navigator.of(context)
                                    .pushReplacementNamed('/dashboard');
                              } else {
                                print('errou');
                              }
                            },
                            child: Text('Login'),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
