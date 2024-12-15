import 'package:flutter/material.dart';
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Center(
        child: Text("LoginPage",style: TextStyle(
          fontSize: 40,
          color: Colors.blue,
          fontWeight: FontWeight.bold,
        ),
        ),

      )
    );
  }
}
