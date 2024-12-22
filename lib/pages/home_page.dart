import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
  final int age = 21;
  var name = 'azim';

  HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: const Text(
          "first app",
          style: TextStyle(fontSize: 30,color: Colors.white),
        ),
        backgroundColor: Colors.deepPurpleAccent,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Text(
          "Welcome $name\nage: $age",
          style: const TextStyle(fontSize: 30),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
