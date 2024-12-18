import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Login Page'),
          ),
          body: SingleChildScrollView(
            // Ensures scrolling if content overflows
            child: Column(
              children: [
                Image.asset(
                  "assets/images/login.png",
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 20,
                ),
                const Text("Welcome",
                  style:
                  TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 32),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Enter usernsmr",
                          labelText: "UserName",
                        ),
                      ),
                      TextFormField(
                        obscureText: true,
                        obscuringCharacter: "\$",
                        decoration: InputDecoration(
                          hintText:"Enter Password",
                          labelText: "password",
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                          onPressed:(){
                            print("welcome to login page");
                          },
                          child: Text("Login"),
                        style: TextButton.styleFrom(),
                        ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
