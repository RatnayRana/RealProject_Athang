import 'package:flutter/material.dart';
import 'package:realprojectflutter/plugins/LocalNotification.dart';

class TempScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Test')),
        body: Container(
          child: Center(
            child: ElevatedButton(
                onPressed: () {
                  LocalNotification()
                      .showNotification("HELLO", "CAN YOU HERE ME");
                },
                child: Text('Click me')),
          ),
        ));
  }
}
