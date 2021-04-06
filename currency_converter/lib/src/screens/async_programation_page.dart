import 'package:currency_converter/src/controllers/to_do_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AsyncProgramationPage extends StatefulWidget {
  State createState() {
    return (AsyncProgramationState());
  }
}

class AsyncProgramationState extends State<AsyncProgramationPage> {
  final controller = ToDoController();

  Widget _success() {
    return (ListView.builder(
      itemCount: controller.toDos.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Checkbox(
            value: controller.toDos[index].completed,
            onChanged: (value) {},
          ),
          title: Text(controller.toDos[index].title),
        );
      },
    ));
  }

  Widget _error(BuildContext context) {
    return (Container(
      color: Colors.redAccent,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("There's an error!", style: TextStyle(color: Colors.white)),
          SizedBox(
            height: 8,
          ),
          ElevatedButton(
              onPressed: () {
                controller.start();
              },
              child: Text(
                'Try Again',
                style: TextStyle(fontWeight: FontWeight.w500),
              ))
        ],
      ),
    ));
  }

  Widget _loading() {
    return (Center(
      child: CircularProgressIndicator(),
    ));
  }

  Widget _start() {
    return (Container());
  }

  Widget _stateManagement(
      ValueNotifier<ToDoState> state, BuildContext context) {
    switch (state.value) {
      case ToDoState.start:
        return _start();
      case ToDoState.loading:
        return _loading();
      case ToDoState.success:
        return _success();
      case ToDoState.error:
        return _error(context);
      default:
        return _start();
    }
  }

  @override
  void initState() {
    super.initState();

    controller.start();
  }

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(46, 46, 46, 1),
          shadowColor: Color.fromRGBO(46, 46, 46, 1),
          actions: [
            IconButton(
                icon: Icon(Icons.refresh_outlined),
                onPressed: () {
                  controller.start();
                })
          ],
        ),
        body: AnimatedBuilder(
          animation: controller.state,
          builder: (context, child) {
            return _stateManagement(controller.state, context);
          },
        )));
  }
}
