import 'package:flutter/material.dart';
//import 'homepage.dart';
import 'InstagramHomePage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InstagramHomePage(),
      );
  }
}
