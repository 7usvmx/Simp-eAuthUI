// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";
import "package:level1/pages/chats.dart";
import "package:level1/pages/home.dart";
import "package:level1/pages/login.dart";
import "package:level1/pages/quotes.dart";
import "package:level1/pages/signup.dart";
import "package:level1/pages/welcome.dart";

void main(List<String> args) {
  runApp(HomeScreen());
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Level 1 Project",
      theme: ThemeData(),
      initialRoute: '/',
      routes: {
        "/": (context) => WelcomePage(),
        "/login": (context) => LoginPage(),
        "/signup": (context) => SingupPage(),
        "/home": (context) => HomePage(),
        "/chats": (context) => Chats(),
        "/quotes": (context) => Quotes(),
      },
    );
  }
}
