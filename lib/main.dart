import 'package:flutter/material.dart';
import 'login_page.dart';
import 'register_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "rive animation",
      initialRoute: "/loginPage",
      routes: {
        "/": (context) => const MyHomePage(),
        "/loginPage": (context) => const LoginPage(),
        "/registerPage": (context) => const RegisterPage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              color: Colors.orange,
              onPressed: () {
                Navigator.pushNamed(context, "/loginPage");
              },
              child: const Text("Login"),
            ),
            MaterialButton(
              color: Colors.orange,
              onPressed: () {
                Navigator.pushNamed(context, "/registerPage");
              },
              child: const Text("Register"),
            ),
          ],
        ),
      ),
    );
  }
}
