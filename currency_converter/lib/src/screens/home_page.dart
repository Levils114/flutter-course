import 'package:currency_converter/src/components/row_values.dart';
import 'package:currency_converter/src/controllers/home_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController fromText = TextEditingController();
  final TextEditingController toText = TextEditingController();

  HomeController homeController;

  @override
  void initState() {
    super.initState();
    homeController = HomeController(fromText, toText);
  }

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.network(
                  'https://images-na.ssl-images-amazon.com/images/I/510WmeXkLXL.png',
                  height: 150,
                  width: 150,
                ),
                SizedBox(
                  height: 50,
                ),
                RowValues(
                    selectedItem: homeController.fromCurrency,
                    controller: fromText,
                    items: homeController.currencies,
                    onChanged: (model) {
                      setState(() {
                        homeController.fromCurrency = model;
                      });
                    }),
                SizedBox(
                  height: 10,
                ),
                RowValues(
                    selectedItem: homeController.toCurrency,
                    controller: toText,
                    items: homeController.currencies,
                    onChanged: (model) {
                      setState(() {
                        homeController.toCurrency = model;
                      });
                    }),
                SizedBox(
                  height: 50,
                ),
                SizedBox(
                    width: 200,
                    child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.amber),
                        ),
                        onPressed: () {
                          homeController.convert();
                        },
                        child: Text('CONVERTER'))),
                SizedBox(
                  height: 16.0,
                ),
                SizedBox(
                    width: 200,
                    child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.green),
                        ),
                        onPressed: () {
                          Navigator.of(context)
                              .pushNamed('async_programation_page');
                        },
                        child: Text('Go to Async Page'))),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
