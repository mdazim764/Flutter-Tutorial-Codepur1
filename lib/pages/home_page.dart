import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int age = 21;
  var name = 'azim';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("first app"),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Container(
          child: Text("name: $name\nage: $age"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
