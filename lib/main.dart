import 'package:flutter/material.dart';
import 'package:class_information_system/welcome/welcome.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: WelcomeScreen(),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
