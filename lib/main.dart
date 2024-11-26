import 'package:barista/welcome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'barista welcome page',
      debugShowCheckedModeBanner: false,
      home: WelcomePage(),
    );
  }
}