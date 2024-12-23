import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled2/utils/myroutes.dart';

import '../widgets/MyThemes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String uname="";
  bool changeBtn=false;

  final _formKey=GlobalKey<FormState>();
  moveToHome(BuildContext context) async {
    if (_formKey.currentState?.validate() ?? false) {
      setState(() {
        changeBtn = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeBtn = false;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyThemes.lightTheme(context),
      darkTheme: MyThemes.darkTheme(context),
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
                  height: 300,
                ),
                const SizedBox(
                  height: 20,
                ),
                  Text("Welcome $uname",
                  style:
                  TextStyle(
                    fontSize: 29,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 32),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                            hintText: "Enter username",
                            labelText: "UserName",
                          ),
                          validator: (val){
                            if(val.toString().isEmpty){
                              return "UserName Cannot be Empty";
                            }else{
                              return null;
                            }
                        },
                          onChanged: (value){
                            uname=value;
                            setState(() {

                            });
                        },
                        ),
                        TextFormField(
                          obscureText: true,
                          obscuringCharacter: "\$",
                          decoration: const InputDecoration(
                            hintText:"Enter Password",
                            labelText: "password",
                          ),
                          validator: (val){
                            if(val.toString().isEmpty){
                              return "PassWord Cannot be Empty";
                            }else if(val.toString().length<6){
                              return "Password length should be at least 6";
                            }
                            else{
                              return null;
                            }
                          },
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Material(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(changeBtn?50:10),

                          child: InkWell(

                            onTap: () =>moveToHome(context),
                            splashColor: Colors.greenAccent,
                            // hoverColor: Colors.white,
                            // highlightColor: Colors.red,
                            child: AnimatedContainer(
                              duration: Duration(seconds: 1),
                              width: changeBtn ? 50: 150,
                              height: 50,
                              alignment: Alignment.center,
                              child: changeBtn?Icon(Icons.done,color: Colors.white,): Text("Login",style: TextStyle(
                                fontSize: 20,fontWeight: FontWeight.bold
                              ),
                              ),
                              // decoration: BoxDecoration(
                              //     color: Colors.blue,
                              //     // shape: changeBtn
                              //     //     ? BoxShape.circle
                              //     //     : BoxShape.rectangle,
                              //     borderRadius: BorderRadius.circular(changeBtn?50:10)
                              //   ),

                            ),
                          ),
                        )
                        // ElevatedButton(
                        //     onPressed:(){
                        //       // print("welcome to login page");
                        //       Navigator.pushNamed(context, MyRoutes.homeRoute);
                        //     },
                        //   style: TextButton.styleFrom(minimumSize: Size(140, 50),backgroundColor: Colors.blueGrey),
                        //     child: const Text("Login",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                        //   ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
    );
  }
}
