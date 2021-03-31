import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/app_controller.dart';

class SwitchComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Switch(
      value: AppController.instace.darkTheme,
      activeColor: Colors.green,
      onChanged: (value) {
        AppController.instace.handleChangeTheme();
      },
    ));
  }
}
