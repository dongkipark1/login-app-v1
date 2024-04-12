import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/home",
      routes: {
        "/login" : (context) => LoginPage(), // "/login 을 호출 하면 LoginPage()가 리턴
        "/home" : (context) => HomePage()
      },
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Login")),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.topCenter,
        child: ElevatedButton(
          child: Text("move login page"),
          onPressed: (){
            Navigator.pushNamed(context, "/login");
          },
        ),
      ),
    );
  }
}
