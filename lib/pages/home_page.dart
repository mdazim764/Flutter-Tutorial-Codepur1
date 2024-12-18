import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int age = 21;
  var name = 'azim';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "first app",
          style: TextStyle(fontSize: 30),
        ),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Text(
          "name: $name\nage: $age",
          style: const TextStyle(fontSize: 30),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
